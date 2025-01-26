import 'dart:async';

import 'package:bmi_app/futures/future_home/view/screen/home_screen/home_scren.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScren(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.asset('images/bmi.jpeg')),
          SizedBox(
            height: 10,
          ),
          Text('Weelcome!!'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            color: Colors.teal,
          )
        ],
      ),
    );
  }
}
