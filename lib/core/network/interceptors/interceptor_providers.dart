import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/core/storage/token_storage.dart';
import '../dio_client/dio_provider.dart';
import 'auth_interceptor.dart';
import 'error_interceptor.dart';
import 'retry_interceptor.dart';
import 'logger_interceptor.dart';

part 'interceptor_providers.g.dart';

@Riverpod(keepAlive: true)
Logger logger(Ref ref) => Logger();

@Riverpod(keepAlive: true)
LoggerInterceptor loggerInterceptor(Ref ref) =>
    LoggerInterceptor(ref.watch(loggerProvider));

@Riverpod(keepAlive: true)
AuthInterceptor authInterceptor(Ref ref) => AuthInterceptor(
  tokenService: ref.watch(tokenStorageProvider),
  logger: ref.watch(loggerProvider),
);

@Riverpod(keepAlive: true)
ErrorInterceptor errorInterceptor(Ref ref) =>
    ErrorInterceptor(ref.watch(loggerProvider));

@Riverpod(keepAlive: true)
RetryInterceptor retryInterceptor(Ref ref) => RetryInterceptor(
  dio: ref.watch(retryDioProvider),
  logger: ref.watch(loggerProvider),
);
