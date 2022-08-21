import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier{
  int count = 0;
  bool isLoading = false;

  void increment() {
    isLoading = true;
    notifyListeners();

    // count++;
    count = count + 2;           //2 씩 증가
    isLoading = false;
    notifyListeners();        //화면갱신
  }
}