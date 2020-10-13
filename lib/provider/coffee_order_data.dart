import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:flutter/cupertino.dart';
import 'coffeedata.dart';

enum CupSize {
  Small,
  Medium,
  Large,
}

class CoffeeOrderData with ChangeNotifier {
  final CoffeeData currentCoffeeData;
  CoffeeOrderData({this.currentCoffeeData});

  int quantity = 0;
  CupSize cupSize = CupSize.Small;
  double sugarPercentage = 100;
  double _coffeePrice;

  double get coffeePrice {
    if (cupSize == CupSize.Small) {
      _coffeePrice = 10000;
    } else if (cupSize == CupSize.Medium) {
      _coffeePrice = 15000;
    } else if (cupSize == CupSize.Large) {
      _coffeePrice = 19000;
    }
    return _coffeePrice;
  }

  void incrementQuantity() {
    quantity = quantity + 1;
    notifyListeners();
  }

  void decrementQuantity() {
    if (quantity > 0) {
      quantity = quantity - 1;
    }
    notifyListeners();
  }

  void onClickedSmallCup() {
    cupSize = CupSize.Small;
    notifyListeners();
  }

  void onClickedMediumCup() {
    cupSize = CupSize.Medium;
    notifyListeners();
  }

  void onClickedLargeCup() {
    cupSize = CupSize.Large;

    notifyListeners();
  }
}
