import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Flutter App",
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
