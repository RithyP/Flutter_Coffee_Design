import 'package:flutter/cupertino.dart';

enum CupSize {
  Small,
  Medium,
  Large,
}

class CoffeeOrderData with ChangeNotifier {
  int quantity = 1;
  CupSize cupSize = CupSize.Small;
  double sugarPercentage = 100;

  void toNotifyListener() {
    notifyListeners();
  }
}
