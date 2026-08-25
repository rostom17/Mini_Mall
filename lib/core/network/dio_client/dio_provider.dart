import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../interceptors/interceptor_providers.dart';
import '../api_constants.dart';
import '../http_headers.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) => createDio([
  ref.watch(loggerInterceptorProvider),
  ref.watch(authInterceptorProvider),
  ref.watch(errorInterceptorProvider),
  ref.watch(retryInterceptorProvider),
]);

@Riverpod(keepAlive: true)
Dio retryDio(Ref ref) => createDio([ref.watch(loggerInterceptorProvider)]);

final options = BaseOptions(
  baseUrl: ApiConstants.baseUrl,
  contentType: HttpHeaders.contentTypeHeader,
  connectTimeout: ApiConstants.connectionTimeout,
  sendTimeout: ApiConstants.sendTimeout,
  receiveTimeout: ApiConstants.receiveTimeout,
  headers: {HttpHeaders.acceptHeader: HttpHeaders.applicationJson},
);

Dio createDio([List<Interceptor> interceptors = const []]) {
  final dio = Dio(options);
  dio.interceptors.addAll(interceptors);
  return dio;
}
