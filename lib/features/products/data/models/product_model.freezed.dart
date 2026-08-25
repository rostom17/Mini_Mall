// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

@JsonKey(name: "_id") String? get id; String? get title; BrandInfoModel? get brand; List<CategoryInfoModel>? get categories; String? get slug;@JsonKey(name: "meta_description") String? get metaDescription; String? get description; List<String>? get photos; List<String>? get colors; List<String>? get sizes; List<String>? get tags;@JsonKey(name: "regular_price") int? get regularPrice;@JsonKey(name: "current_price") int? get currentPrice; int? get quantity;@JsonKey(name: "createdAt") DateTime? get createdAt;@JsonKey(name: "updatedAt") DateTime? get updatedAt;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.colors, colors)&&const DeepCollectionEquality().equals(other.sizes, sizes)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.regularPrice, regularPrice) || other.regularPrice == regularPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,brand,const DeepCollectionEquality().hash(categories),slug,metaDescription,description,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(colors),const DeepCollectionEquality().hash(sizes),const DeepCollectionEquality().hash(tags),regularPrice,currentPrice,quantity,createdAt,updatedAt);

@override
String toString() {
  return 'ProductModel(id: $id, title: $title, brand: $brand, categories: $categories, slug: $slug, metaDescription: $metaDescription, description: $description, photos: $photos, colors: $colors, sizes: $sizes, tags: $tags, regularPrice: $regularPrice, currentPrice: $currentPrice, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id, String? title, BrandInfoModel? brand, List<CategoryInfoModel>? categories, String? slug,@JsonKey(name: "meta_description") String? metaDescription, String? description, List<String>? photos, List<String>? colors, List<String>? sizes, List<String>? tags,@JsonKey(name: "regular_price") int? regularPrice,@JsonKey(name: "current_price") int? currentPrice, int? quantity,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt
});


$BrandInfoModelCopyWith<$Res>? get brand;

}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? brand = freezed,Object? categories = freezed,Object? slug = freezed,Object? metaDescription = freezed,Object? description = freezed,Object? photos = freezed,Object? colors = freezed,Object? sizes = freezed,Object? tags = freezed,Object? regularPrice = freezed,Object? currentPrice = freezed,Object? quantity = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandInfoModel?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryInfoModel>?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,colors: freezed == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>?,sizes: freezed == sizes ? _self.sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,regularPrice: freezed == regularPrice ? _self.regularPrice : regularPrice // ignore: cast_nullable_to_non_nullable
as int?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandInfoModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandInfoModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? title,  BrandInfoModel? brand,  List<CategoryInfoModel>? categories,  String? slug, @JsonKey(name: "meta_description")  String? metaDescription,  String? description,  List<String>? photos,  List<String>? colors,  List<String>? sizes,  List<String>? tags, @JsonKey(name: "regular_price")  int? regularPrice, @JsonKey(name: "current_price")  int? currentPrice,  int? quantity, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.title,_that.brand,_that.categories,_that.slug,_that.metaDescription,_that.description,_that.photos,_that.colors,_that.sizes,_that.tags,_that.regularPrice,_that.currentPrice,_that.quantity,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String? title,  BrandInfoModel? brand,  List<CategoryInfoModel>? categories,  String? slug, @JsonKey(name: "meta_description")  String? metaDescription,  String? description,  List<String>? photos,  List<String>? colors,  List<String>? sizes,  List<String>? tags, @JsonKey(name: "regular_price")  int? regularPrice, @JsonKey(name: "current_price")  int? currentPrice,  int? quantity, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.title,_that.brand,_that.categories,_that.slug,_that.metaDescription,_that.description,_that.photos,_that.colors,_that.sizes,_that.tags,_that.regularPrice,_that.currentPrice,_that.quantity,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id,  String? title,  BrandInfoModel? brand,  List<CategoryInfoModel>? categories,  String? slug, @JsonKey(name: "meta_description")  String? metaDescription,  String? description,  List<String>? photos,  List<String>? colors,  List<String>? sizes,  List<String>? tags, @JsonKey(name: "regular_price")  int? regularPrice, @JsonKey(name: "current_price")  int? currentPrice,  int? quantity, @JsonKey(name: "createdAt")  DateTime? createdAt, @JsonKey(name: "updatedAt")  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.title,_that.brand,_that.categories,_that.slug,_that.metaDescription,_that.description,_that.photos,_that.colors,_that.sizes,_that.tags,_that.regularPrice,_that.currentPrice,_that.quantity,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel extends ProductModel {
  const _ProductModel({@JsonKey(name: "_id") required this.id, required this.title, required this.brand, required final  List<CategoryInfoModel>? categories, required this.slug, @JsonKey(name: "meta_description") required this.metaDescription, required this.description, required final  List<String>? photos, required final  List<String>? colors, required final  List<String>? sizes, required final  List<String>? tags, @JsonKey(name: "regular_price") required this.regularPrice, @JsonKey(name: "current_price") required this.currentPrice, required this.quantity, @JsonKey(name: "createdAt") required this.createdAt, @JsonKey(name: "updatedAt") required this.updatedAt}): _categories = categories,_photos = photos,_colors = colors,_sizes = sizes,_tags = tags,super._();
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override final  String? title;
@override final  BrandInfoModel? brand;
 final  List<CategoryInfoModel>? _categories;
@override List<CategoryInfoModel>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? slug;
@override@JsonKey(name: "meta_description") final  String? metaDescription;
@override final  String? description;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _colors;
@override List<String>? get colors {
  final value = _colors;
  if (value == null) return null;
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _sizes;
@override List<String>? get sizes {
  final value = _sizes;
  if (value == null) return null;
  if (_sizes is EqualUnmodifiableListView) return _sizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "regular_price") final  int? regularPrice;
@override@JsonKey(name: "current_price") final  int? currentPrice;
@override final  int? quantity;
@override@JsonKey(name: "createdAt") final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime? updatedAt;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&const DeepCollectionEquality().equals(other._colors, _colors)&&const DeepCollectionEquality().equals(other._sizes, _sizes)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.regularPrice, regularPrice) || other.regularPrice == regularPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,brand,const DeepCollectionEquality().hash(_categories),slug,metaDescription,description,const DeepCollectionEquality().hash(_photos),const DeepCollectionEquality().hash(_colors),const DeepCollectionEquality().hash(_sizes),const DeepCollectionEquality().hash(_tags),regularPrice,currentPrice,quantity,createdAt,updatedAt);

@override
String toString() {
  return 'ProductModel(id: $id, title: $title, brand: $brand, categories: $categories, slug: $slug, metaDescription: $metaDescription, description: $description, photos: $photos, colors: $colors, sizes: $sizes, tags: $tags, regularPrice: $regularPrice, currentPrice: $currentPrice, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id, String? title, BrandInfoModel? brand, List<CategoryInfoModel>? categories, String? slug,@JsonKey(name: "meta_description") String? metaDescription, String? description, List<String>? photos, List<String>? colors, List<String>? sizes, List<String>? tags,@JsonKey(name: "regular_price") int? regularPrice,@JsonKey(name: "current_price") int? currentPrice, int? quantity,@JsonKey(name: "createdAt") DateTime? createdAt,@JsonKey(name: "updatedAt") DateTime? updatedAt
});


@override $BrandInfoModelCopyWith<$Res>? get brand;

}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? brand = freezed,Object? categories = freezed,Object? slug = freezed,Object? metaDescription = freezed,Object? description = freezed,Object? photos = freezed,Object? colors = freezed,Object? sizes = freezed,Object? tags = freezed,Object? regularPrice = freezed,Object? currentPrice = freezed,Object? quantity = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandInfoModel?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryInfoModel>?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,colors: freezed == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>?,sizes: freezed == sizes ? _self._sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,regularPrice: freezed == regularPrice ? _self.regularPrice : regularPrice // ignore: cast_nullable_to_non_nullable
as int?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandInfoModelCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandInfoModelCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}

// dart format on
