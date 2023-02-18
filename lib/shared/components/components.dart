import 'package:flutter/material.dart';

Widget DefaultButton({
  required String title,
  required Function onClick,
  Color backgroundColor = Colors.blueAccent,
  double width = double.infinity,
  double radius = 0.0,
}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
      child: MaterialButton(
        height: 50,
        minWidth: width,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        elevation: 0,
        color: backgroundColor,
        onPressed: () => onClick(),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
