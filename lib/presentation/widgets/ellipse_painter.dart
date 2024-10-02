import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  final Color color;
  final bool filled;
  final double a;
  final double b;
  final double borderWidth;

  EllipsePainter({
    required this.color,
    required this.filled,
    required this.a,
    required this.b,
    this.borderWidth = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = filled ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    // Adjusted rect to fit stroke width
    final adjustedRect = Rect.fromLTWH(
      paint.strokeWidth / 2, // Adjust for left side stroke width
      paint.strokeWidth / 2, // Adjust for top side stroke width
      a - paint.strokeWidth, // Subtract stroke width from width
      b - paint.strokeWidth, // Subtract stroke width from height
    );

    canvas.drawOval(adjustedRect, paint);
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
  final double borderWidth;

  const EllipseBorderWidget({
    required this.color,
    required this.filled,
    required this.a,
    required this.b,
    required this.borderWidth,
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
        borderWidth: borderWidth,
      ),
    );
  }
}
