import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/core/errors/exception.dart';
import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/core/network/interceptors/interceptor_providers.dart';
import 'package:mini_mall/core/network/connectivity/connectivity_checker.dart';
import 'package:mini_mall/features/products/data/data_sources/product_remote_data_source.dart';
import 'package:mini_mall/features/products/domain/entities/pagination.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';
import 'package:mini_mall/features/products/domain/repositories/product_respository.dart';
import 'package:mini_mall/features/products/data/data_sources/product_remote_data_source_impl.dart';

part 'product_repository_impl.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) => ProductRepositoryImpl(
  logger: ref.watch(loggerProvider),
  connectivityChecker: ref.watch(connectivityCheckerProvider),
  productRemoteDataSource: ref.watch(productRemoteDataSourceProvider),
);

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({
    required this._logger,
    required this._connectivityChecker,
    required this._productRemoteDataSource,
  });

  final Logger _logger;
  final ConnectivityChecker _connectivityChecker;
  final ProductRemoteDataSource _productRemoteDataSource;

  @override
  Future<Either<Failure, Product>> fetchProductById(String id) {
    // TODO: implement fetchProductById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Product>> fetchProductBySlug(String slug) {
    // TODO: implement fetchProductBySlug
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Pagination<Product>>> fetchProducts({
    int? pageNo,
    int? pageSize,
  }) async {
    if (!await _connectivityChecker.isConnected) {
      return const Left(NetworkFailure());
    }

    try {
      final paginatedProducts = await _productRemoteDataSource.fetchProducts(
        pageNo: pageNo,
        pageSize: pageSize,
      );

      _logger.d('''
            next page no: ${paginatedProducts.nextPageNo},
            last page no: ${paginatedProducts.lastPageNo},
            has more: ${paginatedProducts.hasMore},            
      ''');

      return Right(
        Pagination(
          items: paginatedProducts.items.map((e) => e.toEntity()).toList(),
          total: paginatedProducts.total,
          hasMore: paginatedProducts.hasMore,
        ),
      );
    } on AppException catch (e, st) {
      _logger.e(
        "Exception at ProductRepositoryImpl: ${e.message} : ${e.statusCode}",
        error: e.message,
        stackTrace: st,
      );
      return Left(e.toFailure());
    } catch (e, st) {
      _logger.e(
        "Unexpected error at ProductRepositoryImpl: $e",
        stackTrace: st,
      );
      return const Left(UnknownFailure());
    }
  }
}
