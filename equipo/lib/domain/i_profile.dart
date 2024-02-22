import 'package:dartz/dartz.dart';

import 'model/userDataModel.dart';

abstract class I_proile {
  Future<Either<UserDataModel, Exception>> getProfile(
      {required String username});
  Future<Either<dynamic, Exception>> updateProfile(
      {required String username, required String password});
}
