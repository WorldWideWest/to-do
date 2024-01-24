import 'package:flutter/foundation.dart';

@immutable
abstract class CurrentDayEvent {}

class UpdateCurrentDayEvent extends CurrentDayEvent {
  final DateTime day;
  UpdateCurrentDayEvent(this.day);
}
