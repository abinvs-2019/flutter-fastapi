part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState(
      {required bool isLoading,
      bool? isLoggedIn,
      required bool isError,
      bool? isNewUser,
      String? username}) = _ProfileState;

  factory ProfileState.initial() {
    return ProfileState(isLoading: false, isError: false, isNewUser: false);
  }
}
