import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'objectives_model.g.dart';

@JsonSerializable()
class ObjectivesModel {
  @JsonKey(name: '_id')
  String id;
  @JsonKey(defaultValue: '')
  String description;
  @JsonKey(defaultValue: false)
  bool finish;

  ObjectivesModel({
    Key? key,
    this.id = "",
    this.description = "",
    required this.finish,
  });

  factory ObjectivesModel.fromJson(Map<String, dynamic> json) =>
      _$ObjectivesModelFromJson(json);
  Map<String, dynamic> toJson() => _$ObjectivesModelToJson(this);
}
