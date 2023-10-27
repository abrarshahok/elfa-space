import 'package:flutter/material.dart';

class errorProvider with ChangeNotifier {
  final List<String> _errors = [];

  List<String> get errors {
    return [..._errors];
  }

  void addError(String errortxt) {
    _errors.add(errortxt);
    notifyListeners();
  }
}
