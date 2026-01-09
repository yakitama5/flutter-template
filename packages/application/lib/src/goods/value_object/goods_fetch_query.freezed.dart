// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_fetch_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoodsFetchQuery {

 GoodsSortKey get sortKey; SortOrder get sortOrder;
/// Create a copy of GoodsFetchQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsFetchQueryCopyWith<GoodsFetchQuery> get copyWith => _$GoodsFetchQueryCopyWithImpl<GoodsFetchQuery>(this as GoodsFetchQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsFetchQuery&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,sortKey,sortOrder);

@override
String toString() {
  return 'GoodsFetchQuery(sortKey: $sortKey, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $GoodsFetchQueryCopyWith<$Res>  {
  factory $GoodsFetchQueryCopyWith(GoodsFetchQuery value, $Res Function(GoodsFetchQuery) _then) = _$GoodsFetchQueryCopyWithImpl;
@useResult
$Res call({
 GoodsSortKey sortKey, SortOrder sortOrder
});




}
/// @nodoc
class _$GoodsFetchQueryCopyWithImpl<$Res>
    implements $GoodsFetchQueryCopyWith<$Res> {
  _$GoodsFetchQueryCopyWithImpl(this._self, this._then);

  final GoodsFetchQuery _self;
  final $Res Function(GoodsFetchQuery) _then;

/// Create a copy of GoodsFetchQuery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortKey = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as GoodsSortKey,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// Adds pattern-matching-related methods to [GoodsFetchQuery].
extension GoodsFetchQueryPatterns on GoodsFetchQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsFetchQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsFetchQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsFetchQuery value)  $default,){
final _that = this;
switch (_that) {
case _GoodsFetchQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsFetchQuery value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsFetchQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GoodsSortKey sortKey,  SortOrder sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsFetchQuery() when $default != null:
return $default(_that.sortKey,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GoodsSortKey sortKey,  SortOrder sortOrder)  $default,) {final _that = this;
switch (_that) {
case _GoodsFetchQuery():
return $default(_that.sortKey,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GoodsSortKey sortKey,  SortOrder sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _GoodsFetchQuery() when $default != null:
return $default(_that.sortKey,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _GoodsFetchQuery implements GoodsFetchQuery {
  const _GoodsFetchQuery({this.sortKey = GoodsSortKey.price, this.sortOrder = SortOrder.asc});
  

@override@JsonKey() final  GoodsSortKey sortKey;
@override@JsonKey() final  SortOrder sortOrder;

/// Create a copy of GoodsFetchQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsFetchQueryCopyWith<_GoodsFetchQuery> get copyWith => __$GoodsFetchQueryCopyWithImpl<_GoodsFetchQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsFetchQuery&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,sortKey,sortOrder);

@override
String toString() {
  return 'GoodsFetchQuery(sortKey: $sortKey, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$GoodsFetchQueryCopyWith<$Res> implements $GoodsFetchQueryCopyWith<$Res> {
  factory _$GoodsFetchQueryCopyWith(_GoodsFetchQuery value, $Res Function(_GoodsFetchQuery) _then) = __$GoodsFetchQueryCopyWithImpl;
@override @useResult
$Res call({
 GoodsSortKey sortKey, SortOrder sortOrder
});




}
/// @nodoc
class __$GoodsFetchQueryCopyWithImpl<$Res>
    implements _$GoodsFetchQueryCopyWith<$Res> {
  __$GoodsFetchQueryCopyWithImpl(this._self, this._then);

  final _GoodsFetchQuery _self;
  final $Res Function(_GoodsFetchQuery) _then;

/// Create a copy of GoodsFetchQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortKey = null,Object? sortOrder = null,}) {
  return _then(_GoodsFetchQuery(
sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as GoodsSortKey,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
