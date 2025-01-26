import 'dart:math';

import 'package:bmi_app/futures/future_home/cubit/bmi_cubit.dart';
import 'package:bmi_app/futures/future_home/view/screen/result_screen/resultscreen.dart';
import 'package:bmi_app/futures/future_home/view/widget/bluid_widget_male_female.dart';
import 'package:bmi_app/futures/future_home/view/widget/bulid_age_weight.dart';
import 'package:bmi_app/futures/future_home/view/widget/bulid_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI',
            style: TextStyle(
                fontSize: 29, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: BlocBuilder<BmiCubit, BmiState>(
          builder: (context, state) {
            BmiCubit cupit = BlocProvider.of(context);
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                      child: BluidWidgetMaleFemale(
                    cupit: cupit,
                  )),
                  Expanded(
                      child: BulidSlider(
                    cupit: cupit,
                  )),
                  Expanded(
                      child: BulidAgeWeight(
                    cupit: cupit,
                  )),
                  InkWell(
                    onTap: () {
                      double bmi = cupit.wigeht / pow(cupit.hight / 100, 2);
                      print(bmi);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Resultscreen(
                            age: cupit.age,
                            result: bmi.round(),
                            iscolor: cupit.iscolor,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
