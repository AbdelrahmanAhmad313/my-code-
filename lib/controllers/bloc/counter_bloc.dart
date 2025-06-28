import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';
part 'counter_event.dart';


class CounterBloc extends Bloc <CounterEvent,CounterState>{
  CounterBloc():super(CounterInit()){
    on<IncEvent>((event,emit){
      emit(CounterUpdate(state.count+1));
    });
    on<decEvent>((event,emit){
      emit(CounterUpdate(state.count-1));
    });

  }


}