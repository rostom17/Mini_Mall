// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandInfoModel _$BrandInfoModelFromJson(Map<String, dynamic> json) =>
    _BrandInfoModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$BrandInfoModelToJson(_BrandInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'icon': instance.icon,
    };
