import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:mini_mall/features/products/domain/usecases/fetch_products_usecase.dart';
import 'product_list_state.dart';

part 'product_list_controller.g.dart';

@riverpod
class ProductListController extends _$ProductListController {
  @override
  FutureOr<ProductListState> build() {
    return _fetchProducts(1);
  }

  Future<ProductListState> _fetchProducts(int pageNo) async {
    final usecase = ref.read(fetchProductsUsecaseProvider);
    final result = await usecase.call(FetchProductsParams(pageNo: pageNo));

    return result.fold(
      (failure) => throw failure,
      (paginatedProduct) => ProductListState(
        currentPage: pageNo,
        hasReachedMax: !paginatedProduct.hasMore,
        products: paginatedProduct.items,
      ),
    );
  }

  Future<void> loadMoreProducts() async {
    final current = state.value;

    if (current == null || current.isLoadingMore || current.hasReachedMax) {
      return;
    }

    state = AsyncData(
      current.copyWith(isLoadingMore: true, clearLoadMoreError: true),
    );

    final usecase = ref.read(fetchProductsUsecaseProvider);
    final nextPage = current.currentPage + 1;

    final result = await usecase.call(FetchProductsParams(pageNo: nextPage));

    state = AsyncData(
      result.fold(
        (failure) =>
            current.copyWith(isLoadingMore: false, loadMoreError: failure),
        (paginatedProduct) => current.copyWith(
          products: [...current.products, ...paginatedProduct.items],
          currentPage: nextPage,
          isLoadingMore: false,
          hasReachedMax: !paginatedProduct.hasMore,
          clearLoadMoreError: true,
        ),
      ),
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
