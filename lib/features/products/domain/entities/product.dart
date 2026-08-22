import 'package:equatable/equatable.dart';

import 'brand_info.dart';
import 'category_info.dart';

class Product extends Equatable {
  final String id;
  final String title;
  final BrandInfo brand;
  final List<CategoryInfo> categories;
  final String slug;
  final String? metaDescription;
  final String description;
  final List<String> photos;
  final List<String> colors;
  final List<String> sizes;
  final List<String> tags;
  final int? regularPrice;
  final int currentPrice;
  final int quantity;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Product({
    required this.id,
    required this.title,
    required this.brand,
    required this.categories,
    required this.slug,
    this.metaDescription,
    required this.description,
    required this.photos,
    required this.colors,
    required this.sizes,
    required this.tags,
    this.regularPrice,
    required this.currentPrice,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    brand,
    categories,
    slug,
    metaDescription,
    description,
    photos,
    colors,
    sizes,
    tags,
    regularPrice,
    currentPrice,
    quantity,
    createdAt,
    updatedAt,
  ];
}
