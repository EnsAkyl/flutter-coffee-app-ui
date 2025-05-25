import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../widgets/widget.dart';

class SignUpPage extends ConsumerWidget {
  static SignUpPage builder(BuildContext context, GoRouterState state) =>
      SignUpPage();

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              CenterImage(
                height: 220,
                imagePath: "assets/images/coffee_cup_sign_in_up.png",
              ),
              DisplayText(
                text: "Sign Up",
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              DisplayText(text: "Let's create you an account.", fontSize: 14.5),
              const Gap(5),
              CommonTextField(
                title: "Phone Number",
                hintText: "555 555 55 55",
                prefixIcon: Icon(Icons.phone_android),
              ),
              const Gap(5),
              CommonTextField(
                title: "Password",
                hintText: "Password",
                isPassword: true,
                prefixIcon: Icon(Icons.password),
              ),
              const Gap(5),
              CommonTextField(
                title: "Re-Password",
                hintText: "Re-Password",
                isPassword: true,
                prefixIcon: Icon(Icons.password),
              ),
        
              const Gap(20),
              CommonButton(
                padding: EdgeInsets.only(left: 130, right: 5),
                containerHeight: 49,
                containerWidth: 320,
                onTap: () {},
                text: "Sign Up",
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffA97C37),
                      decorationThickness: 1.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xffA97C37),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
