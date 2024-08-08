// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_list_fetch_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleListFetchResult {
  List<SampleListEntity> get items => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleListFetchResultCopyWith<SampleListFetchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleListFetchResultCopyWith<$Res> {
  factory $SampleListFetchResultCopyWith(SampleListFetchResult value,
          $Res Function(SampleListFetchResult) then) =
      _$SampleListFetchResultCopyWithImpl<$Res, SampleListFetchResult>;
  @useResult
  $Res call({List<SampleListEntity> items, int totalCount});
}

/// @nodoc
class _$SampleListFetchResultCopyWithImpl<$Res,
        $Val extends SampleListFetchResult>
    implements $SampleListFetchResultCopyWith<$Res> {
  _$SampleListFetchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SampleListEntity>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleListFetchResultImplCopyWith<$Res>
    implements $SampleListFetchResultCopyWith<$Res> {
  factory _$$SampleListFetchResultImplCopyWith(
          _$SampleListFetchResultImpl value,
          $Res Function(_$SampleListFetchResultImpl) then) =
      __$$SampleListFetchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SampleListEntity> items, int totalCount});
}

/// @nodoc
class __$$SampleListFetchResultImplCopyWithImpl<$Res>
    extends _$SampleListFetchResultCopyWithImpl<$Res,
        _$SampleListFetchResultImpl>
    implements _$$SampleListFetchResultImplCopyWith<$Res> {
  __$$SampleListFetchResultImplCopyWithImpl(_$SampleListFetchResultImpl _value,
      $Res Function(_$SampleListFetchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
  }) {
    return _then(_$SampleListFetchResultImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SampleListEntity>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SampleListFetchResultImpl implements _SampleListFetchResult {
  const _$SampleListFetchResultImpl(
      {required final List<SampleListEntity> items, required this.totalCount})
      : _items = items;

  final List<SampleListEntity> _items;
  @override
  List<SampleListEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'SampleListFetchResult(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleListFetchResultImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleListFetchResultImplCopyWith<_$SampleListFetchResultImpl>
      get copyWith => __$$SampleListFetchResultImplCopyWithImpl<
          _$SampleListFetchResultImpl>(this, _$identity);
}

abstract class _SampleListFetchResult implements SampleListFetchResult {
  const factory _SampleListFetchResult(
      {required final List<SampleListEntity> items,
      required final int totalCount}) = _$SampleListFetchResultImpl;

  @override
  List<SampleListEntity> get items;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$SampleListFetchResultImplCopyWith<_$SampleListFetchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
