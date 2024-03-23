import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.gender, required this.result, required this.age});
  final String gender;
  final int result;
  final int age;


  String get healthiness{
    String healthinessString;
    if (result < 18.5) {
      healthinessString = 'Underweight';
    } else if (result <= 24.9) { // result >= 18.5 && result <= 24.9
      healthinessString = 'Normal';
    } else if (result <= 29.9) { // result >= 25.0 && result <= 29.9
      healthinessString = 'Overweight';
    } else { // result >= 30.0
      healthinessString = 'Obese';
    }
    return healthinessString;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Gender : $gender',
              ),
              Text(
                'Result : $result',
              ),
              Text(
                'Healthiness : $healthiness',
              ),
              Text(
                'Age : $age',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
