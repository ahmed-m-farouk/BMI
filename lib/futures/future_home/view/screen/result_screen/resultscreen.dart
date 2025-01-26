import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen(
      {super.key,
      required this.age,
      required this.result,
      required this.iscolor});
  final int age;

  final int result;
  final bool iscolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'data',
          style: TextStyle(
            fontSize: 29,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gander: ${iscolor ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Age:${age}",
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result:${result}',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
