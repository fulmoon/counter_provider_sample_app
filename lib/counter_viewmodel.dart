import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier{
  int count = 0;
  bool isLoading = false;

  void increment() async {
    isLoading = true;
    notifyListeners();

    // count++;
    await Future.delayed(const Duration(seconds: 3));

    count = count + 2;           //2 씩 증가
    isLoading = false;
    notifyListeners();        //화면갱신
  }
}