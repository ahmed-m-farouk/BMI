import 'package:flutter/material.dart';

class BluidWidgetMaleFemale extends StatelessWidget {
  const BluidWidgetMaleFemale({super.key, required this.cupit});
  final cupit;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              cupit.iscolor = true;
              cupit.changColor();
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  color: cupit.iscolor ? Colors.teal : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: 150,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset('images/male.png'),
                    ),
                    const SizedBox(height: 15),
                    const Text('Male'),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InkWell(
            onTap: () {
              cupit.iscolor = false;
              cupit.changColor();
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  color: cupit.iscolor ? Colors.white : Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: 150,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset('images/female.png'),
                    ),
                    const SizedBox(height: 15),
                    const Text('Female'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
