part of 'user_bloc.dart';

enum FireBaseStatus { unKnown, loginPassword, lostConnection, success }

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(Status.unKnown) Status status,
    @Default(FireBaseStatus.unKnown) FireBaseStatus fireBaseStatus,
  }) = _UserState;
}
