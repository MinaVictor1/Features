import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  static get(context) => BlocProvider.of<CounterCubit>(context);

  void increase() {
    counter += 1;
    emit(CounterIncrease());
  }

  void decrease() {
    counter -= 1;
    emit(CounterDecrease());
  }
}
