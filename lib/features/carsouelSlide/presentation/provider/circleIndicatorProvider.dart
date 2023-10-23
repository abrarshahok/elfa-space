import 'package:flutter/material.dart';

class CircleIndicatorProvider with ChangeNotifier {
  bool _loading = false;

  bool get loading {
    return _loading;
  }

  void switchCircleIndicator() {
    _loading = !_loading;
    notifyListeners();
  }
}
