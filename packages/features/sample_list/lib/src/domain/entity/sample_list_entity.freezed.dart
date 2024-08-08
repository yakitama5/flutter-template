// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleListEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleListEntityCopyWith<SampleListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleListEntityCopyWith<$Res> {
  factory $SampleListEntityCopyWith(
          SampleListEntity value, $Res Function(SampleListEntity) then) =
      _$SampleListEntityCopyWithImpl<$Res, SampleListEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      int? price,
      String? imageUrl,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$SampleListEntityCopyWithImpl<$Res, $Val extends SampleListEntity>
    implements $SampleListEntityCopyWith<$Res> {
  _$SampleListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleListEntityImplCopyWith<$Res>
    implements $SampleListEntityCopyWith<$Res> {
  factory _$$SampleListEntityImplCopyWith(_$SampleListEntityImpl value,
          $Res Function(_$SampleListEntityImpl) then) =
      __$$SampleListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int? price,
      String? imageUrl,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$SampleListEntityImplCopyWithImpl<$Res>
    extends _$SampleListEntityCopyWithImpl<$Res, _$SampleListEntityImpl>
    implements _$$SampleListEntityImplCopyWith<$Res> {
  __$$SampleListEntityImplCopyWithImpl(_$SampleListEntityImpl _value,
      $Res Function(_$SampleListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = freezed,
    Object? imageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SampleListEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SampleListEntityImpl implements _SampleListEntity {
  const _$SampleListEntityImpl(
      {required this.id,
      required this.name,
      this.price,
      this.imageUrl,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String name;
  @override
  final int? price;
  @override
  final String? imageUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SampleListEntity(id: $id, name: $name, price: $price, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleListEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, imageUrl, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleListEntityImplCopyWith<_$SampleListEntityImpl> get copyWith =>
      __$$SampleListEntityImplCopyWithImpl<_$SampleListEntityImpl>(
          this, _$identity);
}

abstract class _SampleListEntity implements SampleListEntity {
  const factory _SampleListEntity(
      {required final String id,
      required final String name,
      final int? price,
      final String? imageUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SampleListEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get price;
  @override
  String? get imageUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SampleListEntityImplCopyWith<_$SampleListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
