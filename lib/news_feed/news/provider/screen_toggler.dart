import 'package:flutter/foundation.dart';

enum Screens { gyms, explore }

class ScreenToggler with ChangeNotifier {
  Screens currentScreen = Screens.explore;
  void toggle(Screens screen) {
    currentScreen = screen;
    notifyListeners();
  }
}
