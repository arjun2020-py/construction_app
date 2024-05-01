import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'siginup_state.dart';

class SiginupCubit extends Cubit<SiginupState> {
  SiginupCubit(this.context) : super(SiginupInitial());
  BuildContext context;
  var formKey = GlobalKey<FormState>();
  TextEditingController usernameControler = TextEditingController(),
      passwrodContoller = TextEditingController(),
      mobileController = TextEditingController();

  vaildateUsername(String value) {
    if (value.isEmpty) {
      return 'enter valid email id';
    }
    emit(SiginupInitial());
  }

  vaildatePassword(String value) {
    if (value.isEmpty) {
      return 'enter valid password';
    }
    emit(SiginupInitial());
  }
    vaildateMobile(String value) {
    if (value.isEmpty) {
      return 'enter valid mobile no';
    }
    emit(SiginupInitial());
  }
}
