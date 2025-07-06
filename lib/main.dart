import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 18, 2, 159), const Color.fromARGB(255, 7, 2, 49)),
      ),
    );
  }
}
