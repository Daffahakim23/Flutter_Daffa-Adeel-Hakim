// import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'counter_event.dart';
import 'counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// part 'counter_event.dart';
// part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<Increment>((event, emit) =>  emit(CounterState(state.value + 1)));
    on<Decrement>((event, emit) =>  emit(CounterState(state.value - 1)));
  }
}
