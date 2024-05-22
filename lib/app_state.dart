import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }

  double _propPriceSaque = 0.0;
  double get propPriceSaque => _propPriceSaque;
  set propPriceSaque(double value) {
    _propPriceSaque = value;
  }
}
