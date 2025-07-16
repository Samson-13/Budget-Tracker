// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hoarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HoardingModel {

 int get id; String get hoardingName; String get location; String get hoardingNumber; String get size; bool get available;
/// Create a copy of HoardingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoardingModelCopyWith<HoardingModel> get copyWith => _$HoardingModelCopyWithImpl<HoardingModel>(this as HoardingModel, _$identity);

  /// Serializes this HoardingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HoardingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.hoardingName, hoardingName) || other.hoardingName == hoardingName)&&(identical(other.location, location) || other.location == location)&&(identical(other.hoardingNumber, hoardingNumber) || other.hoardingNumber == hoardingNumber)&&(identical(other.size, size) || other.size == size)&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hoardingName,location,hoardingNumber,size,available);

@override
String toString() {
  return 'HoardingModel(id: $id, hoardingName: $hoardingName, location: $location, hoardingNumber: $hoardingNumber, size: $size, available: $available)';
}


}

/// @nodoc
abstract mixin class $HoardingModelCopyWith<$Res>  {
  factory $HoardingModelCopyWith(HoardingModel value, $Res Function(HoardingModel) _then) = _$HoardingModelCopyWithImpl;
@useResult
$Res call({
 int id, String hoardingName, String location, String hoardingNumber, String size, bool available
});




}
/// @nodoc
class _$HoardingModelCopyWithImpl<$Res>
    implements $HoardingModelCopyWith<$Res> {
  _$HoardingModelCopyWithImpl(this._self, this._then);

  final HoardingModel _self;
  final $Res Function(HoardingModel) _then;

/// Create a copy of HoardingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? hoardingName = null,Object? location = null,Object? hoardingNumber = null,Object? size = null,Object? available = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hoardingName: null == hoardingName ? _self.hoardingName : hoardingName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,hoardingNumber: null == hoardingNumber ? _self.hoardingNumber : hoardingNumber // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HoardingModel].
extension HoardingModelPatterns on HoardingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HoardingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HoardingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HoardingModel value)  $default,){
final _that = this;
switch (_that) {
case _HoardingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HoardingModel value)?  $default,){
final _that = this;
switch (_that) {
case _HoardingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String hoardingName,  String location,  String hoardingNumber,  String size,  bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HoardingModel() when $default != null:
return $default(_that.id,_that.hoardingName,_that.location,_that.hoardingNumber,_that.size,_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String hoardingName,  String location,  String hoardingNumber,  String size,  bool available)  $default,) {final _that = this;
switch (_that) {
case _HoardingModel():
return $default(_that.id,_that.hoardingName,_that.location,_that.hoardingNumber,_that.size,_that.available);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String hoardingName,  String location,  String hoardingNumber,  String size,  bool available)?  $default,) {final _that = this;
switch (_that) {
case _HoardingModel() when $default != null:
return $default(_that.id,_that.hoardingName,_that.location,_that.hoardingNumber,_that.size,_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HoardingModel implements HoardingModel {
  const _HoardingModel({required this.id, required this.hoardingName, required this.location, required this.hoardingNumber, required this.size, required this.available});
  factory _HoardingModel.fromJson(Map<String, dynamic> json) => _$HoardingModelFromJson(json);

@override final  int id;
@override final  String hoardingName;
@override final  String location;
@override final  String hoardingNumber;
@override final  String size;
@override final  bool available;

/// Create a copy of HoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoardingModelCopyWith<_HoardingModel> get copyWith => __$HoardingModelCopyWithImpl<_HoardingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HoardingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HoardingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.hoardingName, hoardingName) || other.hoardingName == hoardingName)&&(identical(other.location, location) || other.location == location)&&(identical(other.hoardingNumber, hoardingNumber) || other.hoardingNumber == hoardingNumber)&&(identical(other.size, size) || other.size == size)&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hoardingName,location,hoardingNumber,size,available);

@override
String toString() {
  return 'HoardingModel(id: $id, hoardingName: $hoardingName, location: $location, hoardingNumber: $hoardingNumber, size: $size, available: $available)';
}


}

/// @nodoc
abstract mixin class _$HoardingModelCopyWith<$Res> implements $HoardingModelCopyWith<$Res> {
  factory _$HoardingModelCopyWith(_HoardingModel value, $Res Function(_HoardingModel) _then) = __$HoardingModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String hoardingName, String location, String hoardingNumber, String size, bool available
});




}
/// @nodoc
class __$HoardingModelCopyWithImpl<$Res>
    implements _$HoardingModelCopyWith<$Res> {
  __$HoardingModelCopyWithImpl(this._self, this._then);

  final _HoardingModel _self;
  final $Res Function(_HoardingModel) _then;

/// Create a copy of HoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? hoardingName = null,Object? location = null,Object? hoardingNumber = null,Object? size = null,Object? available = null,}) {
  return _then(_HoardingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,hoardingName: null == hoardingName ? _self.hoardingName : hoardingName // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,hoardingNumber: null == hoardingNumber ? _self.hoardingNumber : hoardingNumber // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
