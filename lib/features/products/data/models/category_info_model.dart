import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mini_mall/core/constants/app_urls.dart';
import 'package:mini_mall/core/models/entity_convertible.dart';
import 'package:mini_mall/features/products/domain/entities/category_info.dart';

part 'category_info_model.g.dart';
part 'category_info_model.freezed.dart';

@freezed
abstract class CategoryInfoModel
    with _$CategoryInfoModel
    implements EntityConvertible<CategoryInfo> {
  const CategoryInfoModel._();

  const factory CategoryInfoModel({
    required String? id,
    required String? title,
    required String? slug,
    required String? icon,
  }) = _CategoryInfoModel;

  factory CategoryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoModelFromJson(json);

  @override
  CategoryInfo toEntity() {
    return CategoryInfo(
      id: id ?? "No Id",
      title: title ?? "No Title",
      slug: slug ?? "No Slug",
      icon: icon ?? AppUrls.placeHolderImage,
    );
  }
}
