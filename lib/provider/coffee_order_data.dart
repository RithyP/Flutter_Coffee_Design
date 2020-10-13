import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:flutter/cupertino.dart';
import 'coffeedata.dart';

enum CupSize {
  Small,
  Medium,
  Large,
}

class CoffeeOrderData with ChangeNotifier {
  CoffeeData currentCoffeeData;

  int quantity = 0;
  CupSize _cupSize = CupSize.Small;
  double sugarPercentage = 100;
  double _coffeePrice;

  double get coffeePrice {
    if (cupSize == CupSize.Small) {
      _coffeePrice = currentCoffeeData.coffeePriceSmall;
    } else if (cupSize == CupSize.Medium) {
      _coffeePrice = currentCoffeeData.coffeePriceMedium;
    } else if (cupSize == CupSize.Large) {
      _coffeePrice = currentCoffeeData.coffeePriceLarge;
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
    _cupSize = CupSize.Small;
    notifyListeners();
  }

  void onClickedMediumCup() {
    _cupSize = CupSize.Medium;
    notifyListeners();
  }

  void onClickedLargeCup() {
    _cupSize = CupSize.Large;

    notifyListeners();
  }

  CupSize get cupSize {
    return _cupSize;
  }
}
