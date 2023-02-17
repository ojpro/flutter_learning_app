import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_learning_app/bmi_calculator.dart';
=======
import 'package:flutter_learning_app/contacts.dart';
>>>>>>> contacts_screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const MaterialApp(
      home: BMICalculator(),
      debugShowCheckedModeBanner: false,
    );
=======
    return MaterialApp(home: ContactsScreen());
>>>>>>> contacts_screen
  }
}
