import 'package:coffeeapp/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../config/config.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.onTap,
    required this.text,
    this.fontSize,
    this.fontWeight,
    required this.padding,
  });

  final double containerHeight;
  final double containerWidth;
  final VoidCallback onTap;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: containerWidth,

        decoration: BoxDecoration(
          color: Color(0xff55433C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DisplayText(
                text: text,
                color: Colors.white,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.w600,
              ),
              const Spacer(flex: 2),
              CircleAvatar(
                backgroundColor: Color(0xffA97C37),
                child: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
