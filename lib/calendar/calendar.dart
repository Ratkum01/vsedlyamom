import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime? selectedFirst;
  DateTime? selectedSecond;

  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    weekdayStart: DateTime.sunday,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GG'),
        actions: [
          IconButton(
              onPressed: () {
                calendarController.clearSelectedDates();
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: ScrollableCleanCalendar(
        calendarController: calendarController,
        layout: Layout.BEAUTY,
        calendarCrossAxisSpacing: 20,
        calendarMainAxisSpacing: 10,
      ),
      floatingActionButton:Consumer<CalendarModel>(
        builder:((context,calendar,child){
          return FloatingActionButton(onPressed:(){
            calendar.getDateRange(calendarController.rangeMinDate!, calendarController.rangeMaxDate!);
            Navigator.of(context).pop();
          },child: Icon(Icons.airplane_ticket), );
        }
      ),),
    );
  }
}
