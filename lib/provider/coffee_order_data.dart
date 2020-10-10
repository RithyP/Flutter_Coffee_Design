import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CoffeeOrderData with ChangeNotifier {
  double sugarPercentage = 0;
  void toNotifyListener() {
    notifyListeners();
  }
}
