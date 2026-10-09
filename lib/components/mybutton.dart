import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final String? label;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final ButtonStyle? style;

  const MyButton({
    super.key,
    this.text,
    this.label,
    this.onPressed,
    this.backgroundColor = const Color(0xFFD32F2F),
    this.textColor = Colors.white,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final String displayText = text ?? label ?? "";

    return ElevatedButton(
      style:
          style ??
          ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
      onPressed: onPressed ?? () {},
      child: Text(
        displayText,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
