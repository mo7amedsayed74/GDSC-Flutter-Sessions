import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/sqflite/cubit/db_cubit.dart';
import 'package:gdsc/sqflite/cubit/db_states.dart';

class SQ extends StatelessWidget {
  const SQ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoCubit,ToDoStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    BlocProvider.of<ToDoCubit>(context).insertDB(title: 'dart', time: 2);
                  },
                  child: const Text('insert'),
                ),
                ElevatedButton(
                  onPressed: (){
                    BlocProvider.of<ToDoCubit>(context).getAllFromDB();
                  },
                  child: const Text('get'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
