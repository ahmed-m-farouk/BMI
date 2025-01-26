import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  bool iscolor = true;
  double hight = 120;
  int wigeht = 50;
  int age = 10;

  void changColor() {
    emit(BmiColor());
  }

  void changehight(double value) {
    hight = value;
    emit(Changehight());
  }

  void pluswieght() {
    wigeht++;
    emit(ChangeWeight());
  }

  void mnusswieght() {
    wigeht--;
    emit(ChangeWeight());
  }

  void pluseAge() {
    age++;
    emit(ChangeAge());
  }

  void munsAge() {
    age--;
    emit(ChangeAge());
  }
}
