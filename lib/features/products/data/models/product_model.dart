import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mini_mall/core/constants/app_urls.dart';
import 'package:mini_mall/core/models/entity_convertible.dart';
import 'package:mini_mall/features/products/data/models/brand_info_model.dart';
import 'package:mini_mall/features/products/data/models/category_info_model.dart';
import 'package:mini_mall/features/products/domain/entities/brand_info.dart';
import 'package:mini_mall/features/products/domain/entities/product.dart';

part 'product_model.g.dart';
part 'product_model.freezed.dart';

@freezed
abstract class ProductModel
    with _$ProductModel
    implements EntityConvertible<Product> {
  const ProductModel._();

  const factory ProductModel({
    @JsonKey(name: "_id") required String? id,

    required String? title,
    required BrandInfoModel? brand,
    required List<CategoryInfoModel>? categories,
    required String? slug,

    @JsonKey(name: "meta_description") required String? metaDescription,

    required String? description,
    required List<String>? photos,
    required List<String>? colors,
    required List<String>? sizes,
    required List<String>? tags,

    @JsonKey(name: "regular_price") required int? regularPrice,
    @JsonKey(name: "current_price") required int? currentPrice,

    required int? quantity,

    @JsonKey(name: "createdAt") required DateTime? createdAt,
    @JsonKey(name: "updatedAt") required DateTime? updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @override
  Product toEntity() {
    return Product(
      id: id ?? "No Id",
      title: title ?? "No Title",
      brand:
          brand?.toEntity() ??
          const BrandInfo(
            id: 'unknown_brand',
            title: 'Unknown Brand',
            slug: 'unknown-brand',
            icon: AppUrls.placeHolderImage,
          ),
      categories: categories?.map((e) => e.toEntity()).toList() ?? [],
      slug: "No Slug",
      description: description ?? "No Description",
      photos: photos ?? const [AppUrls.placeHolderImage],
      colors: colors ?? const ["red, greed, blue"],
      sizes: sizes ?? ["m", "l", "xl"],
      tags: tags ?? [],
      currentPrice: currentPrice ?? 0,
      quantity: quantity ?? 0,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}
