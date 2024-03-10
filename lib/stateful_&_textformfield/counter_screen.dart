import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  void initState() {
    super.initState();

    debugPrint('initState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConditionalBuilder(
            condition: count == 5,
            builder: (context) {
              return const Text('counter is 5');
            },
            fallback: (context) {
              return const Text('welcome');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(Icons.add),
                style: IconButton.styleFrom(foregroundColor: Colors.blue),
              ),
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: const Icon(Icons.remove),
                style: IconButton.styleFrom(foregroundColor: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 40),
          TextButton.icon(
            icon: const Icon(Icons.restart_alt),
            label: const Text('Reset'),
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
          ),
          const Gap(20),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              InkWell(
                onTap: () {
                  debugPrint('object');
                },
                child: Container(
                  color: Colors.black,
                  width: 150,
                  height: 150,
                ),
              ),
              const Text(
                'GDSC',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
