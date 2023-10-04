import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier{

  int _count = 100;
  int get count => _count;

  void down() {
    _count--;
    notifyListeners();
  }


}