import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String text;
  final bool isBold;
  final double? size;
  final Color? color;
  final String fontFamily;
  const Texts(this.text,
      {Key? key,
      this.size = 18,
      this.fontFamily = 'Cairo',
      this.color = Colors.black54,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : null,
        fontFamily: fontFamily,
      ),
    );
  }
}
