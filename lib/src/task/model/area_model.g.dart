// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) {
  return AreaModel(
    id: json['_id'] as String,
    name: json['name'] as String? ?? '',
    tasklist: (json['tasklist'] as List<dynamic>?)
            ?.map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$AreaModelToJson(AreaModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'tasklist': instance.tasklist,
    };
