import 'package:cloker_app/src/task/model/asigned_model.dart';
import 'package:cloker_app/src/task/model/objectives_model.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'task_model.g.dart';

@JsonSerializable()
class TaskModel {
  @JsonKey(name: '_id')
  String id;
  @JsonKey(defaultValue: "")
  String title;
  @JsonKey(defaultValue: "")
  String description;
  @JsonKey(defaultValue: "")
  String priority;
  @JsonKey(defaultValue: "")
  String area;
  @JsonKey(defaultValue: "")
  String status; //work,pause,etc
  @JsonKey(defaultValue: [])
  List<AsignedModel> users;
  @JsonKey(defaultValue: "")
  String finishTime;
  @JsonKey(defaultValue: [])
  List<ObjectivesModel> objectives;

  TaskModel({
    Key? key,
    this.id = "",
    this.title = "",
    this.description = "",
    this.priority = "",
    this.area = "",
    this.status = "",
    this.users = const [],
    this.finishTime = "",
    this.objectives = const [],
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
