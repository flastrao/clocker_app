import 'package:clocker_app/src/task/model/asigned_model.dart';
import 'package:clocker_app/src/task/model/objectives_model.dart';
import 'package:clocker_app/src/task/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'area_model.g.dart';

@JsonSerializable()
class AreaModel {
  @JsonKey(name: '_id')
  String id;
  @JsonKey(defaultValue: "")
  String name;
  @JsonKey(defaultValue: [])
  List<TaskModel> tasklist;

  AreaModel({
    Key? key,
    this.id = '',
    this.name = '',
    required this.tasklist,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
  Map<String, dynamic> toJson() => _$AreaModelToJson(this);
}
