import 'package:dartz/dartz.dart';

abstract class I_login {
  Future<Either<dynamic, Exception>> login(
      {required String username, required String password});
  Future<Either<dynamic, Exception>> register(
      {required String username,
      required String password,
      required String email,
      required String fullname});
}
