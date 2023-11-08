import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../resources/app_theem_constatnts.dart';

class ToDateCalender extends StatefulWidget {
  final DateTime? selectedDate;
  final DateTime? startDate;
  final void Function(DateTime? selectedDate) onDateSelected;

  const ToDateCalender(
      {super.key,
      this.selectedDate,
      this.startDate,
      required this.onDateSelected});

  @override
  State<ToDateCalender> createState() => _ToDateCalenderState();
}

class _ToDateCalenderState extends State<ToDateCalender> {
   DateTime _getStartDate() {
    if (widget.selectedDate == null) {
      if (widget.startDate.isBefore(DateTime.now())) {
        return widget.startDate;
      } else {
        return DateTime.now();
      }
    } else {
      if (widget.selectedDate!.isBefore(widget.startDate)) {
        return widget.selectedDate!;
      } else {
        return widget.startDate;
      }
    }
  }
  final ValueNotifier<DateTime?> _focusedDayNotifier = ValueNotifier(null);
  void _handleOnDateSelected(DateTime selectedDate, DateTime focusedDay) {
    if (!isSameDay(_focusedDayNotifier.value, focusedDay)) {
      _focusedDayNotifier.value = selectedDate;
    }
  }

  void _handleOnCancel() {
    context.router.pop();
  }

  void _handleSave() {
    widget.onDateSelected(_focusedDayNotifier.value);
    context.router.pop();
  }

  void _handleOnNoDateSelected() {
    _focusedDayNotifier.value = null;
  }

  void _handleOnTodaySelected() {
    _focusedDayNotifier.value = DateTime.now();
  }

  @override
  void initState() {
    _focusedDayNotifier.value = widget.selectedDate;
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
          GridView(
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
                  onPressed: _handleOnNoDateSelected,
                  child: const Text('No date')),
              TextButton(
                  onPressed: _handleOnTodaySelected,
                  child: const Text('Today')),
            ],
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
                    todayTextStyle: AppTextStyles.largeNormal.copyWith(
                      fontSize: 15,
                    ),
                    todayDecoration: BoxDecoration(color: AppColors.white),
                    selectedTextStyle: AppTextStyles.largeNormal
                        .copyWith(fontSize: 15, color: AppColors.primary),
                    selectedDecoration: BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                  ),
                  headerStyle: const HeaderStyle(
                    leftChevronIcon: Icon(Icons.chevron_left_rounded),
                    rightChevronIcon: Icon(Icons.chevron_right_rounded),
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  onDaySelected: _handleOnDateSelected,
                  firstDay: _getStartDate(),
                  focusedDay: value ?? DateTime.now(),
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
                        value == null
                            ? 'No Date'
                            : DateFormat('d MMM yyyy').format(value),
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
