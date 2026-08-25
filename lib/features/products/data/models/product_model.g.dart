// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(
  Map<String, dynamic> json,
) => _ProductModel(
  id: json['_id'] as String?,
  title: json['title'] as String?,
  brand: json['brand'] == null
      ? null
      : BrandInfoModel.fromJson(json['brand'] as Map<String, dynamic>),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => CategoryInfoModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  slug: json['slug'] as String?,
  metaDescription: json['meta_description'] as String?,
  description: json['description'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  colors: (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sizes: (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  regularPrice: (json['regular_price'] as num?)?.toInt(),
  currentPrice: (json['current_price'] as num?)?.toInt(),
  quantity: (json['quantity'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'categories': instance.categories,
      'slug': instance.slug,
      'meta_description': instance.metaDescription,
      'description': instance.description,
      'photos': instance.photos,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'tags': instance.tags,
      'regular_price': instance.regularPrice,
      'current_price': instance.currentPrice,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
