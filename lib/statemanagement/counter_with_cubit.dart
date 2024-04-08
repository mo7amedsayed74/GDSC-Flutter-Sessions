import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/statemanagement/cubit/counter_states.dart';
import 'package:gdsc/statemanagement/cubit/counter_cubit.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Counter'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).minus();
                    //CounterCubit.get(context).minus();
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text('${BlocProvider.of<CounterCubit>(context).counter}'),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).plus();
                    //CounterCubit.get(context).plus();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
