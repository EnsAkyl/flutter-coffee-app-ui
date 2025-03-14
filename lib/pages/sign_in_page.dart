import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                "assets/images/coffee_cup_sign_in_up.png",
                height: 220,
              ),
              const Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const Text(
                "We've already met!",
                style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 60),
              Container(
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "PHONE NUMBER",
                    prefixIcon: Icon(Icons.phone_android),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 360,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "PASSWORD",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
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
              SizedBox(height: 90),

              Container(
                width: 320,
                height: 49,
                decoration: BoxDecoration(
                  color: Color(0xff55433C),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left:130, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
