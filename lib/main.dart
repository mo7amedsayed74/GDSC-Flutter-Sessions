import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/statemanagement/counter_with_cubit.dart';
import 'package:gdsc/statemanagement/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counter(),
      ),
    );
  }
}
