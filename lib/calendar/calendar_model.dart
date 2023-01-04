import 'package:flutter/material.dart';

class CalendarModel extends ChangeNotifier{
  DateTime _first= DateTime.now();
  DateTime _second = DateTime.now().add(const Duration(days:1));

  DateTime get firstDate{
    return _first;
  }
  DateTime get secondDate{
    return _second;
  }

  void getDateRange (DateTime first, DateTime second){
    _first = first;
    _second=second;
    notifyListeners();
  }

}