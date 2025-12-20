// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatusImpl _$$AuthStatusImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthStatusImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthStatusImpl(
          uid: $checkedConvert('uid', (v) => v as String),
          isAnonymous: $checkedConvert('is_anonymous', (v) => v as bool),
          linkedGoogle: $checkedConvert('linked_google', (v) => v as bool),
          linkedApple: $checkedConvert('linked_apple', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'isAnonymous': 'is_anonymous',
        'linkedGoogle': 'linked_google',
        'linkedApple': 'linked_apple'
      },
    );

Map<String, dynamic> _$$AuthStatusImplToJson(_$AuthStatusImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'is_anonymous': instance.isAnonymous,
      'linked_google': instance.linkedGoogle,
      'linked_apple': instance.linkedApple,
    };
