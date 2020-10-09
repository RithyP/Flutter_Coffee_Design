import 'package:flutter/material.dart';

class BottomNaviBarProvider with ChangeNotifier {
  int currentIndex = 0;

  // void selectPageProvider(int value) {
  //   currentIndex = value;
  //   notifyListeners();
  // } //============================ > Not Useful to me yet.
  void toNotifyListeners() {
    notifyListeners();
  }
}
