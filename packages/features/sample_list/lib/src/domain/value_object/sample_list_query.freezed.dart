// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_list_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleListQuery {
  SampleListSortKey get sortKey => throw _privateConstructorUsedError;
  SortOrder get sortOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleListQueryCopyWith<SampleListQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleListQueryCopyWith<$Res> {
  factory $SampleListQueryCopyWith(
          SampleListQuery value, $Res Function(SampleListQuery) then) =
      _$SampleListQueryCopyWithImpl<$Res, SampleListQuery>;
  @useResult
  $Res call({SampleListSortKey sortKey, SortOrder sortOrder});
}

/// @nodoc
class _$SampleListQueryCopyWithImpl<$Res, $Val extends SampleListQuery>
    implements $SampleListQueryCopyWith<$Res> {
  _$SampleListQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as SampleListSortKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleListQueryImplCopyWith<$Res>
    implements $SampleListQueryCopyWith<$Res> {
  factory _$$SampleListQueryImplCopyWith(_$SampleListQueryImpl value,
          $Res Function(_$SampleListQueryImpl) then) =
      __$$SampleListQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SampleListSortKey sortKey, SortOrder sortOrder});
}

/// @nodoc
class __$$SampleListQueryImplCopyWithImpl<$Res>
    extends _$SampleListQueryCopyWithImpl<$Res, _$SampleListQueryImpl>
    implements _$$SampleListQueryImplCopyWith<$Res> {
  __$$SampleListQueryImplCopyWithImpl(
      _$SampleListQueryImpl _value, $Res Function(_$SampleListQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortKey = null,
    Object? sortOrder = null,
  }) {
    return _then(_$SampleListQueryImpl(
      sortKey: null == sortKey
          ? _value.sortKey
          : sortKey // ignore: cast_nullable_to_non_nullable
              as SampleListSortKey,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$SampleListQueryImpl implements _SampleListQuery {
  const _$SampleListQueryImpl({required this.sortKey, required this.sortOrder});

  @override
  final SampleListSortKey sortKey;
  @override
  final SortOrder sortOrder;

  @override
  String toString() {
    return 'SampleListQuery(sortKey: $sortKey, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleListQueryImpl &&
            (identical(other.sortKey, sortKey) || other.sortKey == sortKey) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortKey, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleListQueryImplCopyWith<_$SampleListQueryImpl> get copyWith =>
      __$$SampleListQueryImplCopyWithImpl<_$SampleListQueryImpl>(
          this, _$identity);
}

abstract class _SampleListQuery implements SampleListQuery {
  const factory _SampleListQuery(
      {required final SampleListSortKey sortKey,
      required final SortOrder sortOrder}) = _$SampleListQueryImpl;

  @override
  SampleListSortKey get sortKey;
  @override
  SortOrder get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$SampleListQueryImplCopyWith<_$SampleListQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
