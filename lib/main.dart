import 'package:flutter/material.dart';
import 'package:gdsc/interactive_widgets/interactive_widgets.dart';
import 'package:gdsc/scrollable_widgets/scrollable_session.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InteractiveWidgets(),
    );
  }
}
