import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/core/usecase/usecase.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';
import 'package:mini_mall/features/products/domain/repositories/product_respository.dart';
import 'package:mini_mall/features/products/data/repositories/product_repository_impl.dart';

part 'fetch_product_by_id_usecase.g.dart';

@riverpod
FetchProductByIdUsecase fetchProductByIdUsecase(Ref ref) =>
    FetchProductByIdUsecase(ref.read(productRepositoryProvider));

class FetchProductByIdUsecase
    implements Usecase<Either<Failure, Product>, String> {
  final ProductRepository _productRepository;

  const FetchProductByIdUsecase(this._productRepository);

  @override
  Future<Either<Failure, Product>> call(String productId) async {
    return await _productRepository.fetchProductById(productId);
  }
}
