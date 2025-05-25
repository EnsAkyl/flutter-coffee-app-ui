import 'package:flutter/material.dart';

class CenterImage extends StatelessWidget {
  const CenterImage({
    super.key,
    required this.height,
    required this.imagePath,
    this.alignment,
  });

  final double height;
  final String imagePath;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Image.asset(imagePath, height: height),
    );
  }
}
