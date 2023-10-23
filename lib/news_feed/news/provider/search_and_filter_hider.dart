import 'package:flutter/material.dart';

class SearchAndFilterHider with ChangeNotifier {
  bool isHidden = false;
  void toggleHide() {
    isHidden = !isHidden;
    notifyListeners();
  }
}
