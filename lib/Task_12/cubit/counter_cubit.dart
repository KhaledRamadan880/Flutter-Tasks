import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  var counter = 0;

  void counterIncrement() {
    counter++;
    emit(CounterIncrement());
  }

  void counterDecrement() {
    counter--;
    emit(CounterDecrement());
  }
}
