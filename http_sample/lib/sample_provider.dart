import 'package:flutter/material.dart';

class SampleProvider extends ChangeNotifier{
  String name = '';
  changevalue(String newValue) {
    name = newValue;
    notifyListeners();
  }
}