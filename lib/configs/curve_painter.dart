import 'package:flutter/material.dart';
import 'package:i_can_read/configs/color.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    // set properties to paint
    paint.color = ColorPalette.primaryGold;
    paint.style = PaintingStyle.fill;

    var path = Path();
    // draw path
    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width / 2, size.height / 4, size.width, size.height * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}