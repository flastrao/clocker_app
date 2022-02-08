// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doubt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoubtModel _$DoubtModelFromJson(Map<String, dynamic> json) {
  return DoubtModel(
    id: json['_id'] as String?,
    username: json['username'] as String? ?? '',
    title: json['title'] as String? ?? '',
    description: json['description'] as String? ?? '',
    area: json['area'] as String? ?? '',
    status: json['status'] as String? ?? '',
    createdAt: json['createdAt'] as String? ?? '0000-00-00T00:00:00.112Z',
  );
}

Map<String, dynamic> _$DoubtModelToJson(DoubtModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'title': instance.title,
      'description': instance.description,
      'area': instance.area,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
