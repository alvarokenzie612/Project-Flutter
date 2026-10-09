import 'package:flutter/material.dart';

class MyImageView extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double borderRadius;
  final BoxFit fit;

  const MyImageView({
    super.key,
    required this.imageUrl,
    this.width = 50,
    this.height = 50,
    this.borderRadius = 8,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        color: Colors.white,
        child: Image.asset(imageUrl, width: width, height: height, fit: fit),
      ),
    );
  }
}
