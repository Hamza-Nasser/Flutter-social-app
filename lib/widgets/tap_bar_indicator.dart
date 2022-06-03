import 'package:flutter/widgets.dart';

class TapBarIndicatorAsDecoration extends Decoration{
  final Color color;
  final double radius;
  const TapBarIndicatorAsDecoration({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return TapBarIndicatorAsBoxPainter(color: color, radius: radius);
  }
  //because of createBoxPainter returns a BoxPainter object and we actually need to return a Decoration object we override
  // createBoxPainter function to make the indicator as BoxPainter object and in tapBarIndicatorDecoration we make it as
  //decoration object.
}
class TapBarIndicatorAsBoxPainter extends BoxPainter{
  final Color color;
  final double radius;
  const TapBarIndicatorAsBoxPainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(configuration.size!.width/2 - radius/2, configuration.size!.height - radius);
    canvas.drawCircle(offset+circleOffset, radius, paint);
  }

}