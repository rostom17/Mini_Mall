import 'package:fpdart/fpdart.dart';
import 'package:equatable/equatable.dart';
import 'package:mini_mall/core/constants/api_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/core/usecase/usecase.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';
import 'package:mini_mall/features/products/domain/entities/pagination.dart';
import 'package:mini_mall/features/products/domain/repositories/product_respository.dart';
import 'package:mini_mall/features/products/data/repositories/product_repository_impl.dart';

part 'fetch_products_usecase.g.dart';

@riverpod
FetchProductsUsecase fetchProductsUsecase(Ref ref) =>
    FetchProductsUsecase(ref.watch(productRepositoryProvider));

class FetchProductsUsecase
    implements
        Usecase<Either<Failure, Pagination<Product>>, FetchProductsParams> {
  const FetchProductsUsecase(this._productRepository);

  final ProductRepository _productRepository;

  @override
  Future<Either<Failure, Pagination<Product>>> call(
    FetchProductsParams params,
  ) async {
    return await _productRepository.fetchProducts(
      pageNo: params.pageNo,
      pageSize: params.pageSize,
    );
  }
}

class FetchProductsParams extends Equatable {
  final int pageNo;
  final int pageSize;

  const FetchProductsParams({
    required this.pageNo,
    this.pageSize = ApiConstants.pageSize,
  });

  @override
  List<Object?> get props => [pageNo, pageSize];
}
