import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mini_mall/core/errors/failure.dart';
import 'package:mini_mall/features/products/presentation/controllers/product_list_controller.dart';
import 'package:mini_mall/features/products/presentation/widgets/product_tile.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    const threshold = 300.0;
    final position = _scrollController.position;
    if (position.maxScrollExtent - position.pixels <= threshold) {
      ref.read(productListControllerProvider.notifier).loadMoreProducts();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productListControllerProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: state.when(
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),

          error: (err, _) => Center(
            child: err is Failure
                ? _InitialLoadError(
                    message: err.message,
                    onRetry: () {
                      ref.invalidate(productListControllerProvider);
                    },
                  )
                : Text(err.toString()),
          ),

          data: (listState) => RefreshIndicator(
            onRefresh: () =>
                ref.read(productListControllerProvider.notifier).refresh(),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
              ),
              controller: _scrollController,

              itemCount: listState.products.length + 1,
              itemBuilder: (context, index) {
                if (index < listState.products.length) {
                  return ProductTile(
                    product: listState.products[index],
                    index: index,
                  );
                }

                return _ListFooter(
                  isLoadingMore: listState.isLoadingMore,
                  hasReachedMax: listState.hasReachedMax,
                  loadMoreError: listState.loadMoreError,
                  onRetry: () => ref
                      .read(productListControllerProvider.notifier)
                      .loadMoreProducts(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ListFooter extends StatelessWidget {
  final bool isLoadingMore;
  final bool hasReachedMax;
  final Failure? loadMoreError;
  final VoidCallback onRetry;

  const _ListFooter({
    required this.isLoadingMore,
    required this.hasReachedMax,
    required this.loadMoreError,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoadingMore) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: CircularProgressIndicator.adaptive()),
      );
    }
    if (loadMoreError != null) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(loadMoreError!.message, textAlign: TextAlign.center),
              TextButton(onPressed: onRetry, child: const Text('Retry')),
            ],
          ),
        ),
      );
    }
    if (hasReachedMax) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: Text("You've reached the end")),
      );
    }
    return const SizedBox.shrink();
  }
}

class _InitialLoadError extends StatelessWidget {
  final String message;
  final Function() onRetry;
  const _InitialLoadError({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
