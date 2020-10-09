import 'package:cafe_app_freebies/models/coffeedata_model.dart';
import 'package:cafe_app_freebies/screens/components/coffee_details.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CoffeeDetail extends StatelessWidget {
  final CoffeeData coffeeData;

  CoffeeDetail({
    @required this.coffeeData,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            // SliverAppBar(
            //   backgroundColor: Color(0xFFFAF4EE),
            //   leading: Padding(
            //     padding: const EdgeInsets.only(top: 10.0),
            //     child: IconButton(
            //       color: Color(0xFF8C746A),
            //       onPressed: () => Navigator.pop(context),
            //       icon: Icon(Icons.arrow_back_ios),
            //     ),
            //   ),
            //   expandedHeight: 369.09,
            //   title: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 10,
            //       top: 10,
            //     ),
            //     child: Text(
            //       '[Coffee Title]',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            //   centerTitle: true,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(45.0),
            //       bottomRight: Radius.circular(45.0),
            //     ),
            //   ),
            //   shadowColor: Colors.black,
            //   elevation: 100,
            // )
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: DetailSliverDelegate(
                coffeeData: coffeeData,
              ),
            ),

            // SliverToBoxAdapter(
            //   child: SizedBox(height: 39),
            // ),
            SliverToBoxAdapter(
              child: CoffeeOrder(coffeeData: coffeeData),
            ),
            //SliverFillRemaining(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight = 320.5;
  final double shrinkedHeight = 80.0;

  final CoffeeData coffeeData;

  DetailSliverDelegate({
    this.coffeeData,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: expandedHeight,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFFAF4EE).withOpacity(1.0),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45.0),
          bottomRight: Radius.circular(45.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.10),
            offset: Offset(0, 50),
            blurRadius: 88,
          )
        ],
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16.4,
            left: 32.1,
            child: IconButton(
              color: Color(0xFF8C746A),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Positioned.fill(
            top: 25,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                coffeeData.coffeeName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          Positioned(
            top: 88,
            left: 164,
            right: 164,
            bottom: 103.7,
            child: Container(
              height: 128.81,
              width: 86.25,
              child: Hero(
                tag: coffeeData.coffeeName,
                child: Image(
                  image: AssetImage(coffeeData.imageAssets),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => math.max(expandedHeight, shrinkedHeight);

  @override
  double get minExtent => shrinkedHeight;

  @override
  bool shouldRebuild(DetailSliverDelegate oldDelegate) {
    return expandedHeight != oldDelegate.expandedHeight ||
        shrinkedHeight != oldDelegate.shrinkedHeight;
  }
}
