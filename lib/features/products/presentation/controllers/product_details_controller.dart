import 'package:mini_mall/features/products/domain/usecases/fetch_product_by_id_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/features/products/domain/entities/product.dart';

part 'product_details_controller.g.dart';

@riverpod
class ProductDetailsController extends _$ProductDetailsController {
  @override
  FutureOr<Product> build(String id) async {
    final result = await ref.read(fetchProductByIdUsecaseProvider).call(id);
    return result.fold((failure) => throw failure, (product) => product);
  }
}
