import 'package:flutter/material.dart';
import 'package:gdsc/bmi_calculator/screens/bmi_screen.dart';
import 'package:gdsc/stateful_&_textformfield/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
