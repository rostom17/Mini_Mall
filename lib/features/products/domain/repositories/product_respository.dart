import 'package:fpdart/fpdart.dart';

import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/features/products/domain/entities/pagination.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';

abstract interface class ProductRepository {
  Future<Either<Failure, Pagination<Product>>> fetchProducts({
    int? pageNo,
    int? pageSize,
  });

  Future<Either<Failure, Product>> fetchProductBySlug(String slug);

  Future<Either<Failure, Product>> fetchProductById(String id);
}
