import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomePage extends ConsumerWidget {
  static WelcomePage builder(BuildContext context, GoRouterState state) =>
      const WelcomePage();

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/coffee_app_logo.png", scale: 4),
            ),
            SizedBox(height: 14),
            Image.asset(
              "assets/images/welcomepage_coffee_image.png",
              height: 350,
            ),
            const Text(
              "Find your favorite",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const Text(
              "Coffee Taste!",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            const Text(
              "We’re coffee shop, beer and wine bar, \n& event space for performing arts",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Container(
              height: 49,
              width: 172,
              decoration: BoxDecoration(
                color: Color(0xff55433C),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(flex: 2),
                    CircleAvatar(
                      backgroundColor: Color(0xffA97C37),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
