import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/sqflite/cubit/db_cubit.dart';
import 'package:gdsc/sqflite/sq.dart';
import 'package:gdsc/statemanagement/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> CounterCubit()),
        BlocProvider(create: (context)=> ToDoCubit()..createDB()), // lazy
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SQ(),
      ),
    );
  }
}
