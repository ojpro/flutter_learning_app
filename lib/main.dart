import 'package:flutter/material.dart';
import 'package:flutter_learning_app/contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContactsScreen());
  }
}
