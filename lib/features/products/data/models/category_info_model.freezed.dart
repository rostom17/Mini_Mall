// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryInfoModel {

 String? get id; String? get title; String? get slug; String? get icon;
/// Create a copy of CategoryInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryInfoModelCopyWith<CategoryInfoModel> get copyWith => _$CategoryInfoModelCopyWithImpl<CategoryInfoModel>(this as CategoryInfoModel, _$identity);

  /// Serializes this CategoryInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,icon);

@override
String toString() {
  return 'CategoryInfoModel(id: $id, title: $title, slug: $slug, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $CategoryInfoModelCopyWith<$Res>  {
  factory $CategoryInfoModelCopyWith(CategoryInfoModel value, $Res Function(CategoryInfoModel) _then) = _$CategoryInfoModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? slug, String? icon
});




}
/// @nodoc
class _$CategoryInfoModelCopyWithImpl<$Res>
    implements $CategoryInfoModelCopyWith<$Res> {
  _$CategoryInfoModelCopyWithImpl(this._self, this._then);

  final CategoryInfoModel _self;
  final $Res Function(CategoryInfoModel) _then;

/// Create a copy of CategoryInfoModel
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


/// Adds pattern-matching-related methods to [CategoryInfoModel].
extension CategoryInfoModelPatterns on CategoryInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryInfoModel() when $default != null:
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
case _CategoryInfoModel() when $default != null:
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
case _CategoryInfoModel():
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
case _CategoryInfoModel() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryInfoModel extends CategoryInfoModel {
  const _CategoryInfoModel({required this.id, required this.title, required this.slug, required this.icon}): super._();
  factory _CategoryInfoModel.fromJson(Map<String, dynamic> json) => _$CategoryInfoModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? slug;
@override final  String? icon;

/// Create a copy of CategoryInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryInfoModelCopyWith<_CategoryInfoModel> get copyWith => __$CategoryInfoModelCopyWithImpl<_CategoryInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,icon);

@override
String toString() {
  return 'CategoryInfoModel(id: $id, title: $title, slug: $slug, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$CategoryInfoModelCopyWith<$Res> implements $CategoryInfoModelCopyWith<$Res> {
  factory _$CategoryInfoModelCopyWith(_CategoryInfoModel value, $Res Function(_CategoryInfoModel) _then) = __$CategoryInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? slug, String? icon
});




}
/// @nodoc
class __$CategoryInfoModelCopyWithImpl<$Res>
    implements _$CategoryInfoModelCopyWith<$Res> {
  __$CategoryInfoModelCopyWithImpl(this._self, this._then);

  final _CategoryInfoModel _self;
  final $Res Function(_CategoryInfoModel) _then;

/// Create a copy of CategoryInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? slug = freezed,Object? icon = freezed,}) {
  return _then(_CategoryInfoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
