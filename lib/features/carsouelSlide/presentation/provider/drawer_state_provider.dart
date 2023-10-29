import 'package:flutter/foundation.dart';

class DrawerStateProvider with ChangeNotifier {
  bool isOpened = false;
  void toggleDrawerState(bool state) {
    isOpened = state;
    notifyListeners();
  }
}
