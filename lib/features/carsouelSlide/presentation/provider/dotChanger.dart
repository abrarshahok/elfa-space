import 'package:flutter/material.dart';

class DotChanger with ChangeNotifier {
  int currentindex = 0;

  void setindex(int value) {
    currentindex = value;
    notifyListeners();
  }
}
