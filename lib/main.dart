import 'package:flutter/material.dart';
import 'package:flutter_learning_app/screens/messanger.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessangerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
