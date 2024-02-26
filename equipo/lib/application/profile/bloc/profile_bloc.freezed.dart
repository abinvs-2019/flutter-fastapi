// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) getProfile,
    required TResult Function(UserDataModel dataModel) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? getProfile,
    TResult? Function(UserDataModel dataModel)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? getProfile,
    TResult Function(UserDataModel dataModel)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$GetProfileImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileEvent.getProfile(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      __$$GetProfileImplCopyWithImpl<_$GetProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) getProfile,
    required TResult Function(UserDataModel dataModel) updateProfile,
  }) {
    return getProfile(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? getProfile,
    TResult? Function(UserDataModel dataModel)? updateProfile,
  }) {
    return getProfile?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? getProfile,
    TResult Function(UserDataModel dataModel)? updateProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile(final String username) = _$GetProfileImpl;

  String get username;
  @JsonKey(ignore: true)
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDataModel dataModel});

  $UserDataModelCopyWith<$Res> get dataModel;
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataModel = null,
  }) {
    return _then(_$UpdateProfileImpl(
      null == dataModel
          ? _value.dataModel
          : dataModel // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res> get dataModel {
    return $UserDataModelCopyWith<$Res>(_value.dataModel, (value) {
      return _then(_value.copyWith(dataModel: value));
    });
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(this.dataModel);

  @override
  final UserDataModel dataModel;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(dataModel: $dataModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.dataModel, dataModel) ||
                other.dataModel == dataModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) getProfile,
    required TResult Function(UserDataModel dataModel) updateProfile,
  }) {
    return updateProfile(dataModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? getProfile,
    TResult? Function(UserDataModel dataModel)? updateProfile,
  }) {
    return updateProfile?.call(dataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? getProfile,
    TResult Function(UserDataModel dataModel)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(dataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile(final UserDataModel dataModel) =
      _$UpdateProfileImpl;

  UserDataModel get dataModel;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isLoggedIn => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool? get isNewUser => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  UserDataModel? get dataModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool? isLoggedIn,
      bool isError,
      bool? isNewUser,
      String? username,
      UserDataModel? dataModel});

  $UserDataModelCopyWith<$Res>? get dataModel;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggedIn = freezed,
    Object? isError = null,
    Object? isNewUser = freezed,
    Object? username = freezed,
    Object? dataModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: freezed == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      dataModel: freezed == dataModel
          ? _value.dataModel
          : dataModel // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get dataModel {
    if (_value.dataModel == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.dataModel!, (value) {
      return _then(_value.copyWith(dataModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool? isLoggedIn,
      bool isError,
      bool? isNewUser,
      String? username,
      UserDataModel? dataModel});

  @override
  $UserDataModelCopyWith<$Res>? get dataModel;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoggedIn = freezed,
    Object? isError = null,
    Object? isNewUser = freezed,
    Object? username = freezed,
    Object? dataModel = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: freezed == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      dataModel: freezed == dataModel
          ? _value.dataModel
          : dataModel // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  _$ProfileStateImpl(
      {required this.isLoading,
      this.isLoggedIn,
      required this.isError,
      this.isNewUser,
      this.username,
      this.dataModel});

  @override
  final bool isLoading;
  @override
  final bool? isLoggedIn;
  @override
  final bool isError;
  @override
  final bool? isNewUser;
  @override
  final String? username;
  @override
  final UserDataModel? dataModel;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isLoggedIn: $isLoggedIn, isError: $isError, isNewUser: $isNewUser, username: $username, dataModel: $dataModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.dataModel, dataModel) ||
                other.dataModel == dataModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoggedIn, isError,
      isNewUser, username, dataModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  factory _ProfileState(
      {required final bool isLoading,
      final bool? isLoggedIn,
      required final bool isError,
      final bool? isNewUser,
      final String? username,
      final UserDataModel? dataModel}) = _$ProfileStateImpl;

  @override
  bool get isLoading;
  @override
  bool? get isLoggedIn;
  @override
  bool get isError;
  @override
  bool? get isNewUser;
  @override
  String? get username;
  @override
  UserDataModel? get dataModel;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
