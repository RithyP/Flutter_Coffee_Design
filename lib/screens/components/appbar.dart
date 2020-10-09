import 'package:flutter/material.dart';

class CustAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.090866,
          //color: Colors.red,
        ),
        Positioned(
          top: 27.4,
          left: 24.0,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: Icon(
              Icons.sort,
              size: MediaQuery.of(context).size.height * 0.02724144,
            ),
            onPressed: () {},
            color: Colors.black,
          ),
        ),
        Positioned(
          top: 27.4,
          right: 24.0,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: Icon(
              Icons.search,
              size: MediaQuery.of(context).size.height * 0.02435686,
            ),
            onPressed: () {},
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
