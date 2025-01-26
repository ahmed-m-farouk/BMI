import 'package:flutter/material.dart';

class BulidSlider extends StatelessWidget {
  const BulidSlider({super.key, required this.cupit});
  final cupit;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Height',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${cupit.hight.round()}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Slider(
            value: cupit.hight,
            max: 220.0,
            min: 100,
            onChanged: (value) {
              cupit.changehight(value);
            },
          ),
        ],
      ),
    );
  }
}
