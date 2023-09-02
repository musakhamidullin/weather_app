import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';

part 'user_state.dart';
part 'user_event.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<_SendData>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading, fireBaseStatus: FireBaseStatus.unKnown));

        FirebaseAuth auth = FirebaseAuth.instance;

        await auth.signInWithEmailAndPassword(
            email: event.email.trim(), password: event.password.trim());

        emit(state.copyWith(
            fireBaseStatus: FireBaseStatus.success, status: Status.success));
      } on FirebaseAuthException catch (e) {
        debugPrint(e.message);
        if (e.message?.contains(
                'The password is invalid or the user does not have a password.') ??
            false) {
          emit(state.copyWith(fireBaseStatus: FireBaseStatus.loginPassword, status: Status.failure));
          return;
        }

        if (e.message?.contains('connection') ?? false) {
          emit(state.copyWith(fireBaseStatus: FireBaseStatus.lostConnection, status: Status.failure));
          return;
        }

        if(e.message?.contains('The email address is badly formatted.') ?? false){
          emit(state.copyWith(fireBaseStatus: FireBaseStatus.loginPassword, status: Status.failure));
          return;
        }
      }
    });
  }
}
