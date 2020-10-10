import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _value = 100;
  @override
  Widget build(BuildContext context) {
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
            });
          },
          divisions: 6,
          label: "${_value.toStringAsFixed(0)}%",
        ),
      ),
    );
  }
}

class CustomSliderThumbRect extends SliderComponentShape {
  final double thumbRadius;
  final thumbHeight;
  final int min;
  final int max;

  const CustomSliderThumbRect({
    this.thumbRadius,
    this.thumbHeight,
    this.min,
    this.max,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final rRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
          center: center, width: thumbHeight * 1.2, height: thumbHeight * .6),
      Radius.circular(thumbRadius * .4),
    );

    final paint = Paint()
      ..color = sliderTheme.activeTrackColor //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = new TextSpan(
        style: new TextStyle(
            fontSize: thumbHeight * .3,
            fontWeight: FontWeight.w700,
            color: sliderTheme.thumbColor,
            height: 1),
        text: '${getValue(value)}');
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawRRect(rRect, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
