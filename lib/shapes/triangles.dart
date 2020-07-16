import 'package:flutter/material.dart';

class ShapesPainter extends CustomPainter {
  ShapesPainter({this.color, this.rotate});

  // Fields in a Widget subclass are always marked "final".

  final Color color;
  final bool rotate;

  @override
  void paint(Canvas canvas, Size size) {
    //final shapeBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final paint = Paint();

    var tris = 40.0;
    var triWidth = size.width / tris;
    // var w = 0.0;

    paint.color = color;

    var path = Path();

    if (rotate) {
      path.moveTo(0, 0);
      for (double i = 1; i < tris + 1; i++) {
        path.lineTo(i * triWidth - triWidth / 2, size.height);
        path.lineTo(i * triWidth, 0);
      }
      path.close();
    } else {
      path.moveTo(0, size.height);
      for (double i = 1; i < tris + 1; i++) {
        path.lineTo(i * triWidth - triWidth / 2, 0);
        path.lineTo(i * triWidth, size.height);
      }
      path.close();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
