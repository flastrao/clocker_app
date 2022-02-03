import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'asigned_model.g.dart';

@JsonSerializable()
class AsignedModel {
  @JsonKey(name: '_id')
  String id;
  @JsonKey(name: 'fullName')
  String name;

  AsignedModel({
    Key? key,
    this.id = "",
    this.name = "",
  });

  factory AsignedModel.fromJson(Map<String, dynamic> json) =>
      _$AsignedModelFromJson(json);
  Map<String, dynamic> toJson() => _$AsignedModelToJson(this);
}
