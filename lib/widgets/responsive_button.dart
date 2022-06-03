import 'package:flutter/material.dart';

import '../misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final bool? isResponsive;

  const ResponsiveButton({Key? key,required this.width, this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/button-one.png'),

        ],
      ),
    );
  }
}
