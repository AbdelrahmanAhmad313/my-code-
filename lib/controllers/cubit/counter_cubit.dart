import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit():super(CounterInit());
  void inc(){
    emit(CounterUpdate(state.count+1));
  }
  void dec(){
    emit(CounterUpdate(state.count-1));
  }
}
