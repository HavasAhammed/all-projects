import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier{
  String name = '';

  changeValue(String newvalue){
    name = newvalue;
    notifyListeners();

  }
}