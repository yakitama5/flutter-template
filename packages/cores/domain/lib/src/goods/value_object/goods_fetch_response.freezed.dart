// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_fetch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoodsFetchResponse {
  List<Goods> get goods => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  /// Create a copy of GoodsFetchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsFetchResponseCopyWith<GoodsFetchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsFetchResponseCopyWith<$Res> {
  factory $GoodsFetchResponseCopyWith(
          GoodsFetchResponse value, $Res Function(GoodsFetchResponse) then) =
      _$GoodsFetchResponseCopyWithImpl<$Res, GoodsFetchResponse>;
  @useResult
  $Res call({List<Goods> goods, int totalCount});
}

/// @nodoc
class _$GoodsFetchResponseCopyWithImpl<$Res, $Val extends GoodsFetchResponse>
    implements $GoodsFetchResponseCopyWith<$Res> {
  _$GoodsFetchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsFetchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goods = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      goods: null == goods
          ? _value.goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsFetchResponseImplCopyWith<$Res>
    implements $GoodsFetchResponseCopyWith<$Res> {
  factory _$$GoodsFetchResponseImplCopyWith(_$GoodsFetchResponseImpl value,
          $Res Function(_$GoodsFetchResponseImpl) then) =
      __$$GoodsFetchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Goods> goods, int totalCount});
}

/// @nodoc
class __$$GoodsFetchResponseImplCopyWithImpl<$Res>
    extends _$GoodsFetchResponseCopyWithImpl<$Res, _$GoodsFetchResponseImpl>
    implements _$$GoodsFetchResponseImplCopyWith<$Res> {
  __$$GoodsFetchResponseImplCopyWithImpl(_$GoodsFetchResponseImpl _value,
      $Res Function(_$GoodsFetchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsFetchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goods = null,
    Object? totalCount = null,
  }) {
    return _then(_$GoodsFetchResponseImpl(
      goods: null == goods
          ? _value._goods
          : goods // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GoodsFetchResponseImpl implements _GoodsFetchResponse {
  const _$GoodsFetchResponseImpl(
      {required final List<Goods> goods, required this.totalCount})
      : _goods = goods;

  final List<Goods> _goods;
  @override
  List<Goods> get goods {
    if (_goods is EqualUnmodifiableListView) return _goods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goods);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'GoodsFetchResponse(goods: $goods, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsFetchResponseImpl &&
            const DeepCollectionEquality().equals(other._goods, _goods) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_goods), totalCount);

  /// Create a copy of GoodsFetchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsFetchResponseImplCopyWith<_$GoodsFetchResponseImpl> get copyWith =>
      __$$GoodsFetchResponseImplCopyWithImpl<_$GoodsFetchResponseImpl>(
          this, _$identity);
}

abstract class _GoodsFetchResponse implements GoodsFetchResponse {
  const factory _GoodsFetchResponse(
      {required final List<Goods> goods,
      required final int totalCount}) = _$GoodsFetchResponseImpl;

  @override
  List<Goods> get goods;
  @override
  int get totalCount;

  /// Create a copy of GoodsFetchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsFetchResponseImplCopyWith<_$GoodsFetchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
