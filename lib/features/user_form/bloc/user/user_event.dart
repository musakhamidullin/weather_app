part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.sendData({
    required String email,
    required String password,
  }) = _SendData;
}
