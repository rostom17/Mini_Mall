import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mini_mall/core/constants/app_urls.dart';
import 'package:mini_mall/app/router/route_names.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product, required this.index});

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RouteNames.productDetails, extra: product);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.photos.isNotEmpty
                      ? product.photos[0]
                      : AppUrls.placeHolderImage,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.broken_image),
                ),
              ),
            ),
            Text(product.title),
            Text(product.id),
          ],
        ),
      ),
    );
  }
}
