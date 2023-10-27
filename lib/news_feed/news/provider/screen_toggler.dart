import 'package:flutter/foundation.dart';

enum Screens { explore, gyms, schools }

class ScreenToggler with ChangeNotifier {
  Screens currentScreen = Screens.explore;
  void toggle(Screens screen) {
    currentScreen = screen;
    notifyListeners();
  }
}
