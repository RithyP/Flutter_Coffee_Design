import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 33,
        top: 20,
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontFamily: 'Sen',
            fontSize: 36,
            color: const Color(0xff000000),
          ),
          children: [
            TextSpan(
              text: 'It\'s a Great',
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'Day for\nCoffee.',
              style: TextStyle(
                color: const Color(0xffb98875),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
