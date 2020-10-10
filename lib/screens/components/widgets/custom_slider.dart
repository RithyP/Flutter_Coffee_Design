import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    print('Slider Rebuilt');
    return Container(
      width: 290.0,
      decoration: BoxDecoration(
        color: Color(0xFFCF9775).withOpacity(1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          activeTickMarkColor: Colors.white,
          inactiveTickMarkColor: Colors.white,
          thumbColor: Colors.white,
          trackHeight: 10.0,
          valueIndicatorColor: Color(0xFFCF9775).withOpacity(1.0),
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
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
            });
          },
          divisions: 6,
          label: "${_value.toStringAsFixed(0)}%",
        ),
      ),
    );
  }
}
