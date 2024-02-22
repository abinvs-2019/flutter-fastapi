import 'package:dartz/dartz.dart';

abstract class Login {
  Future<Either<dynamic, Exception>> login(
      {required String username, required String password});
}
