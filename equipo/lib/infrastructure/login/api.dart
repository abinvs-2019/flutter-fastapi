// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equipo/config/constants.dart';
import 'package:equipo/domain/I_Login.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart';

@LazySingleton(as: I_login)
class LoginApi implements I_login {
  @override
  Future<Either<dynamic, Exception>> login(
      {required String username, required String password}) async {
    Response response = await post(Uri.parse("${BASE_URL}/login/"),
        body: {"username": username, "password": password});

    if (response.statusCode == 200) {
      return const Left("Login Success");
    } else if (response.statusCode == 422) {
      return Right(Exception('CLIENT-ERROR'));
    } else {
      return Right(Exception('Unknown-Error'));
    }
  }

  @override
  Future<Either<dynamic, Exception>> register(
      {required String username,
      required String password,
      required String email,
      required String fullname}) async {
    Response response = await post(Uri.parse("${BASE_URL}/register/"), body: {
      "username": username,
      "email": email,
      "full_name": fullname,
      "password": password
    });

    if (response.statusCode == 200) {
      return const Left("Registration Success");
    } else if (response.statusCode == 422) {
      return Right(Exception('CLIENT-ERROR'));
    } else {
      return Right(Exception('Unknown-Error'));
    }
  }
}
