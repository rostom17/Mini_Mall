// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryInfoModel _$CategoryInfoModelFromJson(Map<String, dynamic> json) =>
    _CategoryInfoModel(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$CategoryInfoModelToJson(_CategoryInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'icon': instance.icon,
    };
