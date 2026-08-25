import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/core/errors/exception.dart';

part 'network_executor.g.dart';

@Riverpod(keepAlive: true)
NetworkExecutor networkExecutor(Ref ref) => NetworkExecutor();

class NetworkExecutor {
  Future<Response<T>> execute<T>({
    required Future<Response<T>> Function() request,
  }) async {
    try {
      return await request();
    } on DioException catch (e) {
      final error = e.error;
      throw (error is AppException) ? error : const UnknownException();
    } catch (e) {
      throw const UnknownException();
    }
  }
}
