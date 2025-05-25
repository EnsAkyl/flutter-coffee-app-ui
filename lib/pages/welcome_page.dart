import 'package:coffeeapp/config/config.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/widget.dart';

class WelcomePage extends ConsumerWidget {
  static WelcomePage builder(BuildContext context, GoRouterState state) =>
      const WelcomePage();

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CenterImage(
              height: 75,
              imagePath: "assets/images/coffee_app_logo.png",
            ),
            const Gap(14),
            CenterImage(
              height: 350,
              imagePath: "assets/images/welcomepage_coffee_image.png",
            ),
            DisplayText(text: "Find your favorite", fontSize: 25),
            DisplayText(
              text: "Coffee Taste!",
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            const Gap(3),
            DisplayText(
              text:
                  "We're coffee shop, beer and wine bar, \n& event space for performing arts",
              fontSize: 14,
            ),
            const Gap(15),
            CommonButton(
              padding: EdgeInsets.only(left: 24, right: 5),
              onTap: () => context.push(RouteLocation.signIn),
              containerHeight: 49,
              containerWidth: 173,
              text: "Get Started",
            ),
          ],
        ),
      ),
    );
  }
}
