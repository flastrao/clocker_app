// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) {
  return SessionModel(
    startedAt: json['startedAt'] as String? ?? '',
    finishedAt: json['finishedAt'] as String? ?? '',
  )..userId = json['_id'] as String?;
}

Map<String, dynamic> _$SessionModelToJson(SessionModel instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'startedAt': instance.startedAt,
      'finishedAt': instance.finishedAt,
    };
