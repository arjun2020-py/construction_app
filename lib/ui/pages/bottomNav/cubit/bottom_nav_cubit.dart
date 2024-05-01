import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../Delivery_project/delivery_project.dart';
import '../../Review/screen_review.dart';
import '../../Upcoming_project/upcoming_pro.dart';
import '../../UserHome/screen_home.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit(this.context) : super(BottomNavInitial());
  BuildContext context;
  int selectTab = 0;

  void selectedScreen(int index) {
    selectTab = index;
    emit(BottomNavInitial());
  }
}
