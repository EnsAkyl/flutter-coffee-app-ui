import 'package:coffeeapp/config/config.dart';
import 'package:coffeeapp/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerWidget {
  static SignInPage builder(BuildContext context, GoRouterState state) =>
      SignInPage();

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CenterImage(
              alignment: Alignment.topCenter,
              height: 220,
              imagePath: "assets/images/coffee_cup_sign_in_up.png",
            ),
            DisplayText(
              text: "Sign In",
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            DisplayText(text: "We've already met!", fontSize: 14.5),
            const Gap(30),
            CommonTextField(
              title: "Phone Number",
              hintText: "555 555 55 55",
              prefixIcon: Icon(Icons.phone_android),
            ),

            const Gap(15),
            CommonTextField(
              title: "Password",
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
              isPassword: true,
            ),
            const Gap(15),
            const Text(
              "Forgot password?",
              style: TextStyle(
                fontSize: 14.5,
                color: Color(0xffA97C37),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xffA97C37),
                decorationThickness: 1.5,
              ),
            ),
            const Gap(20),
            CommonButton(
              padding: EdgeInsets.only(left: 100, right: 5),
              containerHeight: 49,
              containerWidth: 320,
              onTap: () {},
              text: "Sign In",
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const Gap(5),
                InkWell(
                  onTap: () => context.push(RouteLocation.signUp),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffA97C37),
                      decorationThickness: 1.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xffA97C37),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
