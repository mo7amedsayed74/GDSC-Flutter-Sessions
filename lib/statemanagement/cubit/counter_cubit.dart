import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/statemanagement/counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitialState());

  // BlocProvider.of<CounterCubit>(context)

  static CounterCubit get(context)=>BlocProvider.of(context);



  int counter =0;

  void minus(){
    counter--;
    emit(MinusState());
  }

  void plus(){
    counter++;
    emit(PlusState());
  }
}
