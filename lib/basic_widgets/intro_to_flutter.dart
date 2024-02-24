import 'package:flutter/material.dart';

class FirstCode extends StatelessWidget {
  const FirstCode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back),
        title: const Text('GDSC'),
        actions: const [
          Icon(Icons.arrow_back),
          Icon(Icons.arrow_back),
        ],
      ),
      body: Column(
        children: [
          const Text('Mohamed'),
          const Text('GDSC'),
          Container(
            color: Colors.yellowAccent,
            child: const Text('GDSC'),
          ),
        ],
      ),
    );
  }
}
