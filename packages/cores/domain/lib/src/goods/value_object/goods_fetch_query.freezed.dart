// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_fetch_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoodsFetchQuery {
  GoodsSortKey get sortKey => throw _privateConstructorUsedError;
  SortOrder get sortOrder => throw _privateConstructorUsedError;

  /// Create a copy of GoodsFetchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsFetchQueryCopyWith<GoodsFetchQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsFetchQueryCopyWith<$Res> {
  factory $GoodsFetchQueryCopyWith(
          GoodsFetchQuery value, $Res Function(GoodsFetchQuery) then) =
      _$GoodsFetchQueryCopyWithImpl<$Res, GoodsFetchQuery>;
  @useResult
  $Res call({GoodsSortKey sortKey, SortOrder sortOrder});
}

/// @nodoc
class _$GoodsFetchQueryCopyWithImpl<$Res, $Val extends GoodsFetchQuery>
    implements $GoodsFetchQueryCopyWith<$Res> {
  _$GoodsFetchQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsFetchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortKey = null,
    Object? sortOrder = null,
  }) {
    return _then(_value.copyWith(
      sortKey: null == sortKey
          ? _value.sortKey
          : sortKey // ignore: cast_nullable_to_non_nullable
              as GoodsSortKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsFetchQueryImplCopyWith<$Res>
    implements $GoodsFetchQueryCopyWith<$Res> {
  factory _$$GoodsFetchQueryImplCopyWith(_$GoodsFetchQueryImpl value,
          $Res Function(_$GoodsFetchQueryImpl) then) =
      __$$GoodsFetchQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GoodsSortKey sortKey, SortOrder sortOrder});
}

/// @nodoc
class __$$GoodsFetchQueryImplCopyWithImpl<$Res>
    extends _$GoodsFetchQueryCopyWithImpl<$Res, _$GoodsFetchQueryImpl>
    implements _$$GoodsFetchQueryImplCopyWith<$Res> {
  __$$GoodsFetchQueryImplCopyWithImpl(
      _$GoodsFetchQueryImpl _value, $Res Function(_$GoodsFetchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsFetchQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortKey = null,
    Object? sortOrder = null,
  }) {
    return _then(_$GoodsFetchQueryImpl(
      sortKey: null == sortKey
          ? _value.sortKey
          : sortKey // ignore: cast_nullable_to_non_nullable
              as GoodsSortKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$GoodsFetchQueryImpl implements _GoodsFetchQuery {
  const _$GoodsFetchQueryImpl(
      {this.sortKey = GoodsSortKey.price, this.sortOrder = SortOrder.asc});

  @override
  @JsonKey()
  final GoodsSortKey sortKey;
  @override
  @JsonKey()
  final SortOrder sortOrder;

  @override
  String toString() {
    return 'GoodsFetchQuery(sortKey: $sortKey, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsFetchQueryImpl &&
            (identical(other.sortKey, sortKey) || other.sortKey == sortKey) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortKey, sortOrder);

  /// Create a copy of GoodsFetchQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsFetchQueryImplCopyWith<_$GoodsFetchQueryImpl> get copyWith =>
      __$$GoodsFetchQueryImplCopyWithImpl<_$GoodsFetchQueryImpl>(
          this, _$identity);
}

abstract class _GoodsFetchQuery implements GoodsFetchQuery {
  const factory _GoodsFetchQuery(
      {final GoodsSortKey sortKey,
      final SortOrder sortOrder}) = _$GoodsFetchQueryImpl;

  @override
  GoodsSortKey get sortKey;
  @override
  SortOrder get sortOrder;

  /// Create a copy of GoodsFetchQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsFetchQueryImplCopyWith<_$GoodsFetchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
