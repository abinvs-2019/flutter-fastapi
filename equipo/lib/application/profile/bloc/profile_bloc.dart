import 'package:bloc/bloc.dart';
import 'package:equipo/infrastructure/login/api.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/userDataModel.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<_UpdateProfile>((event, emit) {
      Api().updateProfile(
          username: event!.dataModel.username,
          password: event.dataModel.password);
    });
    on<_GetProfile>((event, emit) {
      Api().getProfile(username: event.username);
    });
  }
}
