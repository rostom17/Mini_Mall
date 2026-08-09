import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class RetryInterceptor extends Interceptor {
  const RetryInterceptor({
    required this._dio,
    required this._logger,
    this.maxRetries = 3,
    this.baseDelay = const Duration(milliseconds: 500),
    this.maxDelay = const Duration(seconds: 5),
    this.retryableStatusCodes = const {502, 503, 504},
    this.retryableMethods = const {"GET", "HEAD", "OPTIONS"},
  });

  final Dio _dio;
  final Logger _logger;
  final int maxRetries;
  final Duration baseDelay;
  final Duration maxDelay;
  final Set<int> retryableStatusCodes;
  final Set<String> retryableMethods;

  static const _retryCountKey = 'retry_attempt_count';

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final requestOptions = err.requestOptions;
    final attempt = (requestOptions.extra[_retryCountKey] as int?) ?? 0;

    if (!_shouldRetry(err, attempt)) {
      handler.next(err);
      return;
    }

    final delay = _resolveDelay(err, attempt);

    _logger.w(
      'Retrying request (attempt ${attempt + 1}/$maxRetries) '
      'after ${delay.inMilliseconds}ms: '
      '${requestOptions.method} ${requestOptions.path}',
    );

    await Future.delayed(delay);

    if (requestOptions.cancelToken?.isCancelled ?? false) {
      handler.next(err);
      return;
    }

    requestOptions.extra[_retryCountKey] = attempt + 1;

    try {
      final response = await _dio.fetch(requestOptions);
      handler.resolve(response);
    } on DioException catch (retryError) {
      handler.reject(retryError, false);
    } catch (e, st) {
      _logger.e('Unexpected error during retry', error: e, stackTrace: st);
      handler.next(err);
    }
  }

  bool _shouldRetry(DioException err, int attempt) {
    if (attempt >= maxRetries) return false;
    if (err.requestOptions.cancelToken?.isCancelled ?? false) return false;
    if (err.type == DioExceptionType.cancel) return false;
    if (err.type == DioExceptionType.badCertificate) return false;

    if (err.requestOptions.data is Stream) return false;

    final method = err.requestOptions.method.toUpperCase();
    final explicitlyRetryable = err.requestOptions.extra['retryable'] == true;
    final methodIsSafe = retryableMethods.contains(method);
    if (!methodIsSafe && !explicitlyRetryable) return false;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
      case DioExceptionType.transformTimeout:
        return true;

      case DioExceptionType.badResponse:
        final statusCode = err.response?.statusCode;

        if (statusCode == 429) return true;

        return statusCode != null && retryableStatusCodes.contains(statusCode);

      case DioExceptionType.unknown:
        return false;
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
        return false;
    }
  }

  Duration _resolveDelay(DioException err, int attempt) {
    final retryAfter = _parseRetryAfter(err.response);
    if (retryAfter != null) {
      return retryAfter > maxDelay ? maxDelay : retryAfter;
    }
    return _exponentialBackoffWithJitter(attempt);
  }

  Duration _exponentialBackoffWithJitter(int attempt) {
    final exponential = baseDelay * pow(2, attempt).toInt();
    final capped = exponential > maxDelay ? maxDelay : exponential;
    final jitterMs = Random().nextInt(250);
    return capped + Duration(milliseconds: jitterMs);
  }

  Duration? _parseRetryAfter(Response? response) {
    final header = response?.headers.value('retry-after');
    if (header == null) return null;

    final seconds = int.tryParse(header);
    if (seconds != null) return Duration(seconds: seconds);

    final date = DateTime.tryParse(header);
    if (date != null) {
      final diff = date.difference(DateTime.now());
      return diff.isNegative ? Duration.zero : diff;
    }
    return null;
  }
}
