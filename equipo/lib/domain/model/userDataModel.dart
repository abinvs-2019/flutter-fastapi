// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromMap(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'userDataModel.freezed.dart';
part 'userDataModel.g.dart';

UserDataModel userDataModelFromMap(String str) =>
    UserDataModel.fromJson(json.decode(str));

String userDataModelToMap(UserDataModel data) => json.encode(data.toJson());

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "full_name") required String fullName,
    @JsonKey(name: "password") required String password,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
