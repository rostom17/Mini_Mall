import 'package:equatable/equatable.dart';

import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';

class ProductListState extends Equatable {
  final List<Product> products;
  final int currentPage;
  final bool isLoadingMore;
  final bool hasReachedMax;
  final Failure? loadMoreError;

  const ProductListState({
    this.products = const [],
    this.currentPage = 1,
    this.isLoadingMore = false,
    this.hasReachedMax = false,
    this.loadMoreError,
  });

  ProductListState copyWith({
    List<Product>? products,
    int? currentPage,
    bool? isLoadingMore,
    bool? hasReachedMax,
    Failure? loadMoreError,
    bool clearLoadMoreError = false,
  }) {
    return ProductListState(
      products: products ?? this.products,
      currentPage: currentPage ?? this.currentPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      loadMoreError: clearLoadMoreError
          ? null
          : (loadMoreError ?? this.loadMoreError),
    );
  }

  @override
  List<Object?> get props => [
    products,
    currentPage,
    isLoadingMore,
    hasReachedMax,
    loadMoreError,
  ];
}
