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
            children: [
              Text(
                gender,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Result : ${result.toStringAsFixed(1)}',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Healthiness : $healthiness',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Age : $age',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
