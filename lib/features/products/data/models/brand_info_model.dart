import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mini_mall/core/constants/app_urls.dart';
import 'package:mini_mall/core/models/entity_convertible.dart';
import 'package:mini_mall/features/products/domain/entities/brand_info.dart';

part 'brand_info_model.g.dart';
part 'brand_info_model.freezed.dart';

@freezed
abstract class BrandInfoModel
    with _$BrandInfoModel
    implements EntityConvertible<BrandInfo> {
  const BrandInfoModel._();

  const factory BrandInfoModel({
    @JsonKey(name: "_id") required String? id,

    required String? title,
    required String? slug,
    required String? icon,
  }) = _BrandInfoModel;

  factory BrandInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BrandInfoModelFromJson(json);

  @override
  BrandInfo toEntity() {
    return BrandInfo(
      id: id ?? "No id",
      title: title ?? "No Title",
      slug: "No Slug",
      icon: icon ?? AppUrls.placeHolderImage,
    );
  }
}
