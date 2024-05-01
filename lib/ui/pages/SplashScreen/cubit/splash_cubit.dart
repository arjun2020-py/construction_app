import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../bottomNav/screen_nav.dart';
import '../../types/type_screen.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this.context) : super(SplashInitial()) {
    splash();
  }
  BuildContext context;

  splash() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TypeScreen(),
      ));
    });
    emit(SplashInitial());
  }
}
