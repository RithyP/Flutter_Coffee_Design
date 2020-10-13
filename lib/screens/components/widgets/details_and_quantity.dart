import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:cafe_app_freebies/provider/coffee_order_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeDetailsAndQuantity extends StatelessWidget {
  const CoffeeDetailsAndQuantity({
    @required this.coffeeData,
  });

  final CoffeeData coffeeData;

  @override
  Widget build(BuildContext context) {
    CoffeeOrderData coffeeOrderData = Provider.of<CoffeeOrderData>(context);
    coffeeOrderData.currentCoffeeData = coffeeData;
    return Padding(
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
                    onTap: () {
                      coffeeOrderData.decrementQuantity();
                    },
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
                  // Selector<CoffeeOrderData, int>(
                  //   selector: (context, orderQuantity) =>
                  //       orderQuantity.quantity,
                  //   builder: (context, quant, child) => Container(
                  //     alignment: Alignment.center,
                  //     width: 36,
                  //     child: Text(quant.toString()),
                  //   ),
                  // ),
                  Consumer<CoffeeOrderData>(
                    builder: (context, orderQuantity, child) {
                      return Container(
                        alignment: Alignment.center,
                        width: 36,
                        child: Text(orderQuantity.quantity.toString()),
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      coffeeOrderData.incrementQuantity();
                    },
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
                child: Selector<CoffeeOrderData, double>(
                  selector: (context, coffData) => coffData.coffeePrice,
                  builder: (context, coffPrice, child) {
                    return Text(
                      coffPrice.toString(), //////////////\\
                      style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 30,
                        color: const Color(0xffcf9775),
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
