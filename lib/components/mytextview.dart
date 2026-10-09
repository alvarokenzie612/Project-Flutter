import 'package:flutter/material.dart';

class MyTextView extends StatelessWidget {
  final String? text;
  final String? label;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextStyle? style;

  const MyTextView({
    super.key,
    this.text,
    this.label,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final String displayText = text ?? label ?? "";
    final TextStyle defaultStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );

    return Text(displayText, style: style ?? defaultStyle);
  }
}
