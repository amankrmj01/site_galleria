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
    extends State<AnimatedEllipseBorderWidget> with TickerProviderStateMixin {
  late AnimationController _widthController;
  late AnimationController _heightController;
  late Animation<double> _widthAnimation;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _widthController = AnimationController(
      duration: const Duration(seconds: 1), // Slower animation for width
      vsync: this,
    );

    _heightController = AnimationController(
      duration: const Duration(seconds: 1), // Faster animation for height
      vsync: this,
    );

    _widthAnimation = Tween<double>(begin: 0, end: 1).animate(_widthController)
      ..addListener(() {
        setState(() {});
      });

    _heightAnimation =
        Tween<double>(begin: 0, end: 1).animate(_heightController)
          ..addListener(() {
            setState(() {});
          });

    _widthController.forward();
    _heightController.forward();
  }

  @override
  void dispose() {
    _widthController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          widget.a * _widthAnimation.value, widget.b * _heightAnimation.value),
      painter: EllipsePainter(
        color: widget.color,
        filled: widget.filled,
        a: widget.a * _widthAnimation.value,
        b: widget.b * _heightAnimation.value,
      ),
    );
  }
}
