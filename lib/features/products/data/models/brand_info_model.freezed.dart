// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandInfoModel {

 String? get id; String? get title; String? get slug; String? get icon;
/// Create a copy of BrandInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandInfoModelCopyWith<BrandInfoModel> get copyWith => _$BrandInfoModelCopyWithImpl<BrandInfoModel>(this as BrandInfoModel, _$identity);

  /// Serializes this BrandInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,icon);

@override
String toString() {
  return 'BrandInfoModel(id: $id, title: $title, slug: $slug, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $BrandInfoModelCopyWith<$Res>  {
  factory $BrandInfoModelCopyWith(BrandInfoModel value, $Res Function(BrandInfoModel) _then) = _$BrandInfoModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? slug, String? icon
});




}
/// @nodoc
class _$BrandInfoModelCopyWithImpl<$Res>
    implements $BrandInfoModelCopyWith<$Res> {
  _$BrandInfoModelCopyWithImpl(this._self, this._then);

  final BrandInfoModel _self;
  final $Res Function(BrandInfoModel) _then;

/// Create a copy of BrandInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? slug = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandInfoModel].
extension BrandInfoModelPatterns on BrandInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? slug,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandInfoModel() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? slug,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _BrandInfoModel():
return $default(_that.id,_that.title,_that.slug,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? slug,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _BrandInfoModel() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandInfoModel extends BrandInfoModel {
  const _BrandInfoModel({required this.id, required this.title, required this.slug, required this.icon}): super._();
  factory _BrandInfoModel.fromJson(Map<String, dynamic> json) => _$BrandInfoModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? slug;
@override final  String? icon;

/// Create a copy of BrandInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandInfoModelCopyWith<_BrandInfoModel> get copyWith => __$BrandInfoModelCopyWithImpl<_BrandInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,icon);

@override
String toString() {
  return 'BrandInfoModel(id: $id, title: $title, slug: $slug, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$BrandInfoModelCopyWith<$Res> implements $BrandInfoModelCopyWith<$Res> {
  factory _$BrandInfoModelCopyWith(_BrandInfoModel value, $Res Function(_BrandInfoModel) _then) = __$BrandInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? slug, String? icon
});




}
/// @nodoc
class __$BrandInfoModelCopyWithImpl<$Res>
    implements _$BrandInfoModelCopyWith<$Res> {
  __$BrandInfoModelCopyWithImpl(this._self, this._then);

  final _BrandInfoModel _self;
  final $Res Function(_BrandInfoModel) _then;

/// Create a copy of BrandInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? slug = freezed,Object? icon = freezed,}) {
  return _then(_BrandInfoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
