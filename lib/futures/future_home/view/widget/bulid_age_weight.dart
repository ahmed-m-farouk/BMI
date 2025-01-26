import 'package:flutter/material.dart';

class BulidAgeWeight extends StatelessWidget {
  const BulidAgeWeight({super.key, required this.cupit});
  final cupit;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 200,
            width: 150,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      cupit.wigeht.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        FloatingActionButton(
                          heroTag: 'weight+',
                          onPressed: () {
                            cupit.pluswieght();
                          },
                          child: const Icon(Icons.add),
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          heroTag: 'weight-',
                          onPressed: () {
                            cupit.mnusswieght();
                          },
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: 200,
            width: 150,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      cupit.age.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        FloatingActionButton(
                          heroTag: 'age+',
                          onPressed: () {
                            cupit.pluseAge();
                          },
                          child: const Icon(Icons.add),
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          heroTag: 'age-',
                          onPressed: () {
                            cupit.munsAge();
                          },
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
