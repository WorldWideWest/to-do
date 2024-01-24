import 'package:bloc/bloc.dart';
import 'package:to_do/presentation/blocs/events/current_day_event.dart';
import 'package:to_do/presentation/blocs/states/current_day_state.dart';

class CurrentDayBloc extends Bloc<CurrentDayEvent, CurrentDayState> {
  CurrentDayBloc() : super(InitialCurrentDayStete(day: DateTime.now())) {
    on<CurrentDayEvent>(_fetchCurrentDay);
  }

  void _fetchCurrentDay(CurrentDayEvent event, Emitter<CurrentDayState> emit) {
    if (event is UpdateCurrentDayEvent) {
      emit(UpdateCurrentDayState(day: event.day));
    }
  }
}
