// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objectives_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectivesModel _$ObjectivesModelFromJson(Map<String, dynamic> json) {
  return ObjectivesModel(
    id: json['_id'] as String,
    description: json['description'] as String? ?? '',
    finish: json['finish'] as bool? ?? false,
  );
}

Map<String, dynamic> _$ObjectivesModelToJson(ObjectivesModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'finish': instance.finish,
    };
