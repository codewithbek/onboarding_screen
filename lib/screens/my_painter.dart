import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  MyPainter({
    required this.lineY,
    required this.x1,
    required this.y1,
    required this.x2,
    required this.y2,
    required this.y3,
  });
  double lineY;
  double x1;
  double y1;
  double x2;
  double y2;
  double y3;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color(0XFF037EEE);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 8.0;
    Path path = Path();

    path.lineTo(0, size.height * lineY);
    path.cubicTo(size.width * x1, size.height * y1, size.width * x2,
        size.height * y2, size.width, size.height * y3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
