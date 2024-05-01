import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());
  BuildContext context;
  var formKey = GlobalKey<FormState>();
  TextEditingController usernameControler = TextEditingController(),
      passwrodContoller = TextEditingController();

  vaildateUsername(String value) {
    if (value.isEmpty) {
      return 'enter valid email id';
    }
    emit(LoginInitial());
  }

  vaildatePassword(String value) {
    if (value.isEmpty) {
      return 'enter valid password';
    }
    emit(LoginInitial());
  }
}
