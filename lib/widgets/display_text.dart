import 'package:coffeeapp/utils/extensions.dart';
import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  const DisplayText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: context.textTheme.bodyLarge?.copyWith(
        color: color ?? context.colorScheme.shadow,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 35,
      ),
    );
  }
}
