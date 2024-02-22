// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userDataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataModelImpl _$$UserDataModelImplFromJson(Map<String, dynamic> json) =>
    _$UserDataModelImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserDataModelImplToJson(_$UserDataModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'full_name': instance.fullName,
      'password': instance.password,
    };
