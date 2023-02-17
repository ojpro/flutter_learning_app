import 'dart:math';

import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final double height;
  final int age;
  final int weight;
  int result = 0;

  BMIResultScreen(this.isMale, this.height, this.age, this.weight,
      {super.key}) {
    result = (weight / pow(height / 100, 2)).round();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text("Results"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender : ${isMale ? 'male' : 'female'}",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "Age : $age",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "Height : $height",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "Weight : $weight",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "Result : $result",
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
