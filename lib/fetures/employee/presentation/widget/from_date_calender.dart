import 'package:auto_route/auto_route.dart';
import 'package:employee__app/resources/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import '../../../../resources/app_theem_constatnts.dart';

class FromDateCalender extends StatefulWidget {
  final DateTime? selectedDate;
  final void Function(DateTime selectedDate) onDateSaved;
  const FromDateCalender({
    super.key,
    this.selectedDate,
    required this.onDateSaved,
  });

  @override
  State<FromDateCalender> createState() => _FromDateCalenderState();
}

class _FromDateCalenderState extends State<FromDateCalender> {
  final toDay = DateTime.now();
  final ValueNotifier<DateTime> _focusedDayNotifier =
      ValueNotifier(DateTime.now());
  void _handleOnDateSelected(DateTime selectedDate, DateTime focusedDay) {
    if (!isSameDay(_focusedDayNotifier.value, focusedDay)) {
      _focusedDayNotifier.value = selectedDate;
    }
  }

  void _handleTodaySelected() {
    _focusedDayNotifier.value = DateTime.now();
  }

  void _handleNextMondaySelected() {
    _focusedDayNotifier.value = DateTime.now().next(DateTime.monday);
  }

  void _handleNextTuesdaySelected() {
    _focusedDayNotifier.value = DateTime.now().next(DateTime.tuesday);
  }

  void _handleOnNextWeekSelected() {
    _focusedDayNotifier.value = DateTime.now().add(const Duration(days: 7));
  }

  void _handleOnCancel() {
    context.popRoute();
  }

  void _handleSave() {
    widget.onDateSaved(_focusedDayNotifier.value);
    context.popRoute();
  }

  @override
  void initState() {
    if (widget.selectedDate != null) {
      _focusedDayNotifier.value = widget.selectedDate!;
    }
    super.initState();
  }

  @override
  void dispose() {
    _focusedDayNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ValueListenableBuilder(
            valueListenable: _focusedDayNotifier,
            builder: (context, value, child) => GridView(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  mainAxisExtent: 36),
              children: [
                ElevatedButton(
                    onPressed: _handleTodaySelected,
                    child: const Text('Today')),
                TextButton(
                    onPressed: _handleNextMondaySelected,
                    child: const Text('Next Monday')),
                TextButton(
                    onPressed: _handleNextTuesdaySelected,
                    child: const Text('Next Tuesday')),
                TextButton(
                    onPressed: _handleOnNextWeekSelected,
                    child: const Text('After 1 week')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ValueListenableBuilder(
              valueListenable: _focusedDayNotifier,
              builder: (context, value, child) => TableCalendar(
                  selectedDayPredicate: (day) {
                    return isSameDay(day, _focusedDayNotifier.value);
                  },
                  availableGestures: AvailableGestures.all,
                  calendarStyle: CalendarStyle(
                      isTodayHighlighted: true,
                      outsideDaysVisible: false,
                      todayTextStyle: AppTextStyles.largeNormal
                          .copyWith(fontSize: 15, color: AppColors.primary),
                      selectedDecoration: BoxDecoration(
                          color: AppColors.primary, shape: BoxShape.circle),
                      todayDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: AppColors.primary))),
                  headerStyle: const HeaderStyle(
                    leftChevronIcon: Icon(Icons.chevron_left_rounded),
                    rightChevronIcon: Icon(Icons.chevron_right_rounded),
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  onDaySelected: _handleOnDateSelected,
                  firstDay: widget.selectedDate == null ||
                          widget.selectedDate!.isAfter(DateTime.now())
                      ? DateTime.now()
                      : widget.selectedDate!,
                  focusedDay: value,
                  lastDay: DateTime(2050)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: AppColors.borderGray))),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.event_outlined,
                      color: AppColors.primary,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    ValueListenableBuilder(
                      valueListenable: _focusedDayNotifier,
                      builder: (context, value, child) => Text(
                        DateFormat('d MMM yyyy').format(value),
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.largeNormal,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                TextButton(
                    onPressed: _handleOnCancel, child: const Text('Cancel')),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: _handleSave, child: const Text('Save'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
