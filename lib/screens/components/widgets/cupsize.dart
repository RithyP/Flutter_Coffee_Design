import 'package:cafe_app_freebies/provider/coffee_order_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CupSizeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoffeeOrderData coffeeOrderData = Provider.of<CoffeeOrderData>(context);
    return Padding(
      padding: EdgeInsets.only(
        top: 35,
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: TextStyle(
              fontFamily: 'Sen',
              fontSize: 20,
              color: const Color(0xff2d140d),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15.4),
            width: 155,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: coffeeOrderData.cupSize == CupSize.Small
                        ? Color(0xFFCF9775).withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      coffeeOrderData.onClickedSmallCup();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/coffee_small.png',
                      ),
                      color: Color(0xFFCF9775).withOpacity(1.0),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: coffeeOrderData.cupSize == CupSize.Medium
                        ? Color(0xFFCF9775).withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      coffeeOrderData.onClickedMediumCup();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/coffee_medium.png',
                      ),
                      color: Color(0xFFCF9775).withOpacity(0.9),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: coffeeOrderData.cupSize == CupSize.Large
                        ? Color(0xFFCF9775).withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      coffeeOrderData.onClickedLargeCup();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/coffee_large.png',
                      ),
                      color: Color(0xFFCF9775).withOpacity(1.0),
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(5),
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(40),
                //     ),
                //   ),
                //   child: Image.asset(
                //     'assets/images/coffee_large.png',
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
