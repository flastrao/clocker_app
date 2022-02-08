import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(defaultValue: "")
  String? name;
  @JsonKey(defaultValue: "")
  String? area;
  @JsonKey(
      defaultValue:
          "https://i.pinimg.com/564x/55/6c/38/556c381559c59fd2231498de3014e7c2.jpg")
  String? profilePictureUrl;
  @JsonKey(defaultValue: "")
  String? email;
  @JsonKey(defaultValue: "")
  String? password;
  @JsonKey(defaultValue: "")
  String? token;
  @JsonKey(defaultValue: "")
  String? phone;
  @JsonKey(defaultValue: "")
  String? createdAt;
  @JsonKey(defaultValue: "")
  String? updatedAt;
  @JsonKey(defaultValue: "")
  String? address;
  @JsonKey(defaultValue: "")
  String? status;

  UserModel({
    Key? key,
    this.id,
    required this.name,
    required this.email,
    this.phone,
    required this.password,
    this.area,
    this.profilePictureUrl,
    this.token,
    this.updatedAt,
    this.createdAt,
    this.address = "",
    this.status = "",
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
