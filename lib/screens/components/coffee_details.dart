import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:cafe_app_freebies/provider/coffee_order_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/addtoCartButton.dart';
import 'widgets/custom_slider.dart';
import 'widgets/details_and_quantity.dart';
import 'widgets/cupsize.dart';
import 'widgets/sugar_title.dart';

class CoffeeOrder extends StatelessWidget {
  final CoffeeData coffeeData;

  CoffeeOrder({this.coffeeData});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeOrderData(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoffeeDetailsAndQuantity(coffeeData: coffeeData),
          /////////////////////////////////////////////////////////////////
          CupSizeWidget(),
          //////////////////////////////////////////////////////////////////
          SurgarTitle(),
          //SizedBox(height: 28.3),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 35.0,
            ),
            child: CustomSlider(),
          ),
          SizedBox(
            height: 53.3,
          ),

          //////////////////////////////////
          AddToCartButton(),
          //////////////////////////////
        ],
      ),
    );
  }
}
