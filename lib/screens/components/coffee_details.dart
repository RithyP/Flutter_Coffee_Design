import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:cafe_app_freebies/provider/coffee_order_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/custom_slider.dart';

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
          Padding(
            /////////////
            padding: const EdgeInsets.only(
              top: 40.0,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coffeeData.coffeeName,
                      style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 20,
                        color: const Color(0xff2d140d),
                      ),
                      //textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 31,
                            height: 28,
                            child: Icon(
                              Icons.remove,
                              size: 10.76,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFCF9775).withOpacity(1.0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(100),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 36,
                          child: Text('0'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 31,
                            height: 28,
                            child: Icon(
                              Icons.add,
                              size: 10.76,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFCF9775).withOpacity(1.0),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 35,
                      child: Text(
                        '៛',
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 20,
                          color: const Color(0xffcf9775),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      //width: 67.0,
                      child: Text(
                        coffeeData.coffeePrice.toString(),
                        style: TextStyle(
                          fontFamily: 'Sen',
                          fontSize: 30,
                          color: const Color(0xffcf9775),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          /////////////////////////////////////////////////////////////////
          Padding(
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
                      InkWell(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                            'assets/images/coffee_small.png',
                          ),
                          color: Color(0xFFCF9775).withOpacity(0.4),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                            'assets/images/coffee_medium.png',
                          ),
                          color: Color(0xFFCF9775).withOpacity(0.3),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image(
                          image: AssetImage(
                            'assets/images/coffee_large.png',
                          ),
                          color: Color(0xFFCF9775).withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //////////////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.only(
              top: 35,
              left: 24,
            ),
            child: Column(
              children: [
                Text(
                  'Sugar',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 20,
                    color: const Color(0xff2d140d),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 53.3,
          ),
          //////////////////////////////////
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 197.59,
                height: 55.17,
                decoration: BoxDecoration(
                  color: Color(0xFFCF9775).withOpacity(1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(28),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFCF9775).withOpacity(0.44),
                      offset: Offset(0, 28),
                      blurRadius: 40.0,
                    ),
                  ],
                ),
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          //////////////////////////////
          CustomSlider(),
        ],
      ),
    );
  }
}
