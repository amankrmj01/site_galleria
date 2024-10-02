import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  final Color color;
  final bool filled;
  final double a;
  final double b;

  EllipsePainter({
    required this.color,
    required this.filled,
    required this.a,
    required this.b,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = filled ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = 4.0;

    final rect = Rect.fromLTWH(0, 0, a, b);
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class EllipseBorderWidget extends StatelessWidget {
  final Color color;
  final bool filled;
  final double a;
  final double b;

  EllipseBorderWidget({
    required this.color,
    required this.filled,
    required this.a,
    required this.b,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(a, b), // Specify the size of the ellipse
      painter: EllipsePainter(
        color: color,
        filled: filled,
        a: a,
        b: b,
      ),
    );
  }
}
