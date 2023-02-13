import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter+"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {},
              child: const Text("-"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "$counter",
                style: const TextStyle(fontSize: 24),
              ),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}
