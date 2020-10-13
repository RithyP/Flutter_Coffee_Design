import 'package:flutter/cupertino.dart';

import '../models/coffeedata_model.dart';

List<CoffeeData> dummydata = const [
  CoffeeData(
      coffeeId: 1,
      coffeeName: 'Espresso',
      coffeePriceSmall: 10000,
      coffeePriceMedium: 15000,
      coffeePriceLarge: 19000,
      imageAssets: 'assets/images/Espresso.png'),
  CoffeeData(
      coffeeId: 2,
      coffeeName: 'Cappuccino',
      coffeePriceSmall: 10000,
      coffeePriceMedium: 15000,
      coffeePriceLarge: 19000,
      imageAssets: 'assets/images/Cappuccino.png'),
  CoffeeData(
      coffeeId: 3,
      coffeeName: 'Macciato',
      coffeePriceSmall: 10000,
      coffeePriceMedium: 15000,
      coffeePriceLarge: 19000,
      imageAssets: 'assets/images/macciato.png'),
  CoffeeData(
      coffeeId: 4,
      coffeeName: 'Mocha',
      coffeePriceSmall: 10000,
      coffeePriceMedium: 15000,
      coffeePriceLarge: 19000,
      imageAssets: 'assets/images/Mocha.png'),
  CoffeeData(
      coffeeId: 5,
      coffeeName: 'Latte',
      coffeePriceSmall: 10000,
      coffeePriceMedium: 15000,
      coffeePriceLarge: 19000,
      imageAssets: 'assets/images/latte.png'),
];

class TempCoffeeData with ChangeNotifier {
  List<CoffeeData> _coffeeData = dummydata;

  List<CoffeeData> get coffeeData {
    return [..._coffeeData];
  }
}
