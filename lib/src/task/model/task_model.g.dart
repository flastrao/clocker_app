// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return TaskModel(
    id: json['_id'] as String,
    title: json['title'] as String? ?? '',
    description: json['description'] as String? ?? '',
    priority: json['priority'] as String? ?? '',
    area: json['area'] as String? ?? '',
    status: json['status'] as String? ?? '',
    users: (json['users'] as List<dynamic>?)
            ?.map((e) => AsignedModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    finishTime: json['finishTime'] as String? ?? '',
    objectives: (json['objectives'] as List<dynamic>?)
            ?.map((e) => ObjectivesModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'area': instance.area,
      'status': instance.status,
      'users': instance.users,
      'finishTime': instance.finishTime,
      'objectives': instance.objectives,
    };
