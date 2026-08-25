import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mall/core/constants/app_urls.dart';

import 'package:mini_mall/features/products/domain/entities/product.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({super.key, required this._product});

  final Product _product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              _product.photos.isNotEmpty
                  ? _product.photos[0]
                  : AppUrls.placeHolderImage,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.broken_image),
            ),
            Text(_product.title),
          ],
        ),
      ),
    );
  }
}
