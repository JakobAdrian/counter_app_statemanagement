import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counter;

  Counter(this._counter);

  getCounter() => _counter;
  

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}