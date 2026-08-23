import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/core/models/api_response.dart';
import 'package:mini_mall/core/constants/api_constants.dart';
import 'package:mini_mall/core/errors/exception.dart';
import 'package:mini_mall/core/network/dio_provider.dart';
import 'package:mini_mall/core/network/interceptors/interceptor_providers.dart';
import 'package:mini_mall/core/network/network_executor.dart';
import 'package:mini_mall/features/products/data/data_sources/product_remote_data_source.dart';
import 'package:mini_mall/features/products/data/models/product_model.dart';
import 'package:mini_mall/features/products/data/models/pagination_model.dart';

part 'product_remote_data_source_impl.g.dart';

@riverpod
ProductRemoteDataSource productRemoteDataSource(Ref ref) =>
    ProductRemoteDataSrouceImpl(
      logger: ref.watch(loggerProvider),
      dio: ref.watch(dioProvider),
      networkExecutor: ref.watch(networkExecutorProvider),
    );

class ProductRemoteDataSrouceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSrouceImpl({
    required this._logger,
    required this._dio,
    required this._networkExecutor,
  });

  final Logger _logger;
  final Dio _dio;
  final NetworkExecutor _networkExecutor;

  @override
  Future<ProductModel> fetchProductById(String id) {
    // TODO: implement fetchProductById
    throw UnimplementedError();
  }

  @override
  Future<ProductModel> fetchProductBySlug(String slug) {
    // TODO: implement fetchProductBySlug
    throw UnimplementedError();
  }

  @override
  Future<PaginationModel<ProductModel>> fetchProducts({
    int? pageNo,
    int? pageSize,
  }) async {
    final response = await _networkExecutor.execute(
      request: () => _dio.get(
        ApiConstants.products,
        queryParameters: {"count": pageSize, "page": pageNo},
      ),
    );

    try {
      final apiRespose = ApiResponse.fromJson(response.data);

      return PaginationModel.fromJson(
        json: apiRespose.data,
        itemKey: "results",
        fromJsonT: ProductModel.fromJson,
      );
    } catch (e, st) {
      _logger.e(
        "Product Remote data source parsing exception",
        error: e,
        stackTrace: st,
      );
      throw const ParsingException();
    }
  }
}
