import 'package:flutter/cupertino.dart';

import 'ellipse_painter.dart';

class AnimatedEllipseBorderWidget extends StatefulWidget {
  final Color color;
  final bool filled;
  final double a;
  final double b;

  const AnimatedEllipseBorderWidget({
    super.key,
    required this.color,
    required this.filled,
    required this.a,
    required this.b,
  });

  @override
  _AnimatedEllipseBorderWidgetState createState() =>
      _AnimatedEllipseBorderWidgetState();
}

class _AnimatedEllipseBorderWidgetState
    extends State<AnimatedEllipseBorderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(widget.a * _animation.value, widget.b * _animation.value),
      painter: EllipsePainter(
        color: widget.color,
        filled: widget.filled,
        a: widget.a * _animation.value,
        b: widget.b * _animation.value,
      ),
    );
  }
}
