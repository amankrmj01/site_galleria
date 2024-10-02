import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  final String text;
  final bool isSelected;

  const UnderlinedText({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Measure the width of the text
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: TextStyle(fontSize: 20)),
      textDirection: TextDirection.ltr,
    )..layout();

    final textWidth = textPainter.width;

    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: isSelected ? textWidth : 0,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
