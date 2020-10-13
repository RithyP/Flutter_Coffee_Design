import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
