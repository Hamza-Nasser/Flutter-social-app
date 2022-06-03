import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  final double size;
  final bool isBold;
  final Color color;
  final String? fontFamily;
  const LargeText(
      {Key? key,
      required this.text,
      required this.color,
      required this.size,
      this.isBold = true,
      this.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontFamily: fontFamily,
        letterSpacing: 2.0,
      ),
    );
  }
}
