import 'package:mini_mall/features/products/data/models/pagination_model.dart';
import 'package:mini_mall/features/products/data/models/product_model.dart';

abstract interface class ProductRemoteDataSource {
  Future<PaginationModel<ProductModel>> fetchProducts({
    int? pageNo,
    int? pageSize,
  });

  Future<ProductModel> fetchProductBySlug(String slug);

  Future<ProductModel> fetchProductById(String id);
}
