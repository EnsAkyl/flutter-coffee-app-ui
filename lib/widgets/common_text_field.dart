import 'package:coffeeapp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.prefixIcon,
    this.isPassword = false,
  });

  final String title;
  final String hintText;
  final Widget? prefixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text(title, style: context.textTheme.bodyMedium),
          const Gap(5),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hintText,

              prefixIcon: prefixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
