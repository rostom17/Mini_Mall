import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '/core/errors/exception.dart';
import '/core/storage/token_storage.dart';
import '../http_headers.dart';

class AuthInterceptor extends Interceptor {
  const AuthInterceptor({required this._tokenService, required this._logger});

  final TokenStorage _tokenService;
  final Logger _logger;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenService.getAccessToken();
    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] =
          "${HttpHeaders.bearerScheme} $token";
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) => handler.next(response);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    _logger.e(
      "Auth Interceptor (onError): ",
      error: err.error,
      stackTrace: err.stackTrace,
    );
    if (err.response?.statusCode == 401) {
      _logger.e(err.message);
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException(),
          response: err.response,
          message: err.message,
        ),
      );
      return;
    }
    handler.next(err);
  }
}
