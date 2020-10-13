import 'package:flutter/material.dart';

class SurgarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
