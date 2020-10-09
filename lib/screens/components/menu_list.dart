import 'package:cafe_app_freebies/coffeedata.dart';
import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:cafe_app_freebies/screens/coffee_details_screen.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<CoffeeData> coffeeList = Temp_Data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: coffeeList.length,
        itemBuilder: (ctx, index) {
          return MenuItem(
            coffeeList[index],
          );
        },
        //physics: NeverScrollableScrollPhysics(),
        //shrinkWrap: true
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final CoffeeData coffeeData;
  MenuItem(this.coffeeData);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoffeeDetail(
              coffeeData: coffeeData,
            ),
          ),
        );
      },
      child: Padding(
        padding:
            EdgeInsets.only(left: 36.5, bottom: 37.85, right: 26.2, top: 37.85),
        child: ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 65.1,
              maxWidth: 60.69,
            ),
            child: Hero(
              tag: coffeeData.coffeeName,
              child: Image(
                image: AssetImage(coffeeData.imageAssets),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 34.2),
            child: Text(
              coffeeData.coffeeName,
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 20,
                color: const Color(0xff2d140d),
              ),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffC69A80),
          ),
        ),
      ),
    );
  }
}
