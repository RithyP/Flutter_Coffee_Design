import 'package:cafe_app_freebies/provider/coffee_order_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 100;

  @override
  Widget build(BuildContext context) {
    CoffeeOrderData coffeeOrderData =
        Provider.of<CoffeeOrderData>(context, listen: false);
    print('Slider Rebuilt');
    return Container(
      width: 295.0,
      decoration: BoxDecoration(
        color: const Color(0xFFCF9775).withOpacity(1.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          activeTickMarkColor: Colors.white,
          inactiveTickMarkColor: Colors.white70,
          thumbColor: Colors.white,
          trackHeight: 16.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          valueIndicatorColor: Color(0xFFCF9775).withOpacity(0.7),
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        ),
        child: Slider(
          min: 0,
          max: 150,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              coffeeOrderData.sugarPercentage = value;
            });
          },
          divisions: 6,
          label: "${_value.toStringAsFixed(0)}%",
        ),
      ),
    );
  }
}
