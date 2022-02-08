import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'session_model.g.dart';

@JsonSerializable()
class SessionModel {
  @JsonKey(name: '_id')
  String? userId;
  @JsonKey(defaultValue: "")
  String? startedAt;
  @JsonKey(defaultValue: "")
  String? finishedAt;
  @JsonKey(defaultValue: "")
  String? duration;

  SessionModel({
    Key? key,
    required this.startedAt,
    required this.finishedAt,
    required this.duration,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);
  Map<String, dynamic> toJson() => _$SessionModelToJson(this);
}
