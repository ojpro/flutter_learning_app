import 'package:flutter/material.dart';

Widget DefaultInput({
  required String label,
  required TextEditingController controller,
  required Function validation,
  required TextInputType type,
  IconData? prefix,
  IconData? suffix,
  Function? onSuffixPressed,
  bool isPassword = false,
}) =>
    TextFormField(
      validator: (value) => validation(value),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
          icon: Icon(suffix),
          onPressed: () => onSuffixPressed!(),
        ),
      ),
    );
