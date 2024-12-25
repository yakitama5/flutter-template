// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreUserModelImpl _$$FirestoreUserModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FirestoreUserModelImpl',
      json,
      ($checkedConvert) {
        final val = _$FirestoreUserModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => dateFromTimestampValue(v)),
          updatedAt:
              $checkedConvert('updated_at', (v) => dateFromTimestampValue(v)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$$FirestoreUserModelImplToJson(
        _$FirestoreUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': timestampFromDateValue(instance.createdAt),
      'updated_at': timestampFromDateValue(instance.updatedAt),
    };
