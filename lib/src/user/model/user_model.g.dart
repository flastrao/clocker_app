// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    id: json['_id'] as String?,
    name: json['name'] as String? ?? '',
    email: json['email'] as String? ?? '',
    phone: json['phone'] as String? ?? '',
    password: json['password'] as String? ?? '',
    area: json['area'] as String? ?? '',
    profilePictureUrl: json['profilePictureUrl'] as String? ??
        'https://i.pinimg.com/564x/55/6c/38/556c381559c59fd2231498de3014e7c2.jpg',
    token: json['token'] as String? ?? '',
    updatedAt: json['updatedAt'] as String? ?? '',
    createdAt: json['createdAt'] as String? ?? '',
    address: json['address'] as String? ?? '',
    status: json['status'] as String? ?? '',
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'area': instance.area,
      'profilePictureUrl': instance.profilePictureUrl,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
      'phone': instance.phone,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'address': instance.address,
      'status': instance.status,
    };
