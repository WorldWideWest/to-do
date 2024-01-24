import 'package:flutter/foundation.dart';

@immutable
abstract class CurrentDayState {}

class InitialCurrentDayStete extends CurrentDayState {
  final DateTime day;
  InitialCurrentDayStete({required this.day});
}

class UpdateCurrentDayState extends CurrentDayState {
  final DateTime day;
  UpdateCurrentDayState({required this.day});
}
