extension DateTimeExtension on DateTime {
  DateTime next(int day) {
    return add(Duration(days: 7 - ((weekday - day))));
  }
}
