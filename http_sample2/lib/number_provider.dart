import 'package:flutter/cupertino.dart';

class NumberProvider extends ChangeNotifier{

    String  name = '';
  changeValue(newValue){
    name = newValue;
    notifyListeners();
  }
}