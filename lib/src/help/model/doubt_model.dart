import 'package:clocker_app/src/session/model/session_model.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'doubt_model.g.dart';

@JsonSerializable()
class DoubtModel {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(defaultValue: "")
  String? username;
  @JsonKey(defaultValue: "")
  String? title;
  @JsonKey(defaultValue: "")
  String? description;
  @JsonKey(defaultValue: "")
  String? area;
  @JsonKey(defaultValue: "")
  String? status;
  @JsonKey(defaultValue: "0000-00-00T00:00:00.112Z")
  String? createdAt;

  DoubtModel({
    Key? key,
    this.id = "",
    this.username = "",
    this.title = "",
    this.description = "",
    this.area = "",
    this.status = "",
    this.createdAt = "0000-00-00T00:00:00.112Z",
  });

  factory DoubtModel.fromJson(Map<String, dynamic> json) =>
      _$DoubtModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoubtModelToJson(this);
}
