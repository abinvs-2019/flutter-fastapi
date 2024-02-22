// ignore_for_file: constant_identifier_names

part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState(
      {required bool isLoading,
      bool? isLoggedIn,
      required bool isError,
      @Default(false) isLoggingOut,
      bool? isNewUser,
      String? username}) = _AuthState;

  factory AuthState.initial() {
    return AuthState(isLoading: false, isError: false, isNewUser: false);
  }
}

enum UserType { USER, ADVISOR, PARTNER }
