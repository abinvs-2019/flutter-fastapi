// ignore_for_file: depend_on_referenced_packages, unused_local_variable, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:dartz/dartz.dart';
import 'package:equipo/core/injection.dart';
import 'package:equipo/domain/I_Login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

var _tag = 'AUTH BLOC';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // I_login auth = getIt<I_login>();

  AuthBloc() : super(AuthState.initial()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      Either<dynamic, Exception> loginRes = await getIt<I_login>()
          .login(username: event.username, password: event.password);
      loginRes.fold((l) {
        emit(
            state.copyWith(isLoggedIn: true, isLoading: false, isError: false));
      }, (r) {
        emit(
            state.copyWith(isLoggedIn: false, isLoading: false, isError: true));
      });
    });
    on<_Register>((event, emit) async {
      Either<dynamic, Exception> registerRes = await getIt<I_login>().register(
          username: event.username,
          password: event.password,
          email: event.email,
          fullname: event.fullname);

      registerRes.fold((l) {
        emit(
            state.copyWith(isLoggedIn: true, isLoading: false, isError: false));
      }, (r) => emit(state.copyWith(isError: true, isLoading: false)));
    });
  }
}
