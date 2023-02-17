import 'package:flutter/material.dart';
import 'package:flutter_learning_app/modules/bmi/bmi_calculator.dart';
import 'package:flutter_learning_app/modules/contacts/contacts.dart';
import 'package:flutter_learning_app/modules/login/login.dart';
import 'package:flutter_learning_app/modules/messanger/messanger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BMICalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
