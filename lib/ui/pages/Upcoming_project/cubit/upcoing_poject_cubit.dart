import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'upcoing_poject_state.dart';

class UpcoingPojectCubit extends Cubit<UpcoingPojectState> {
  UpcoingPojectCubit(this.context) : super(UpcoingPojectInitial());
  BuildContext context;
  int index = 0;
  void indexIncment() {
    index = index + 1;
    emit(UpcoingPojectInitial());
  }
}
