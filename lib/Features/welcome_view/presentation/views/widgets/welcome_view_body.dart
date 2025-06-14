import 'package:clevtask/Features/welcome_view/presentation/views/widgets/have_an_account.dart';
import 'package:clevtask/Features/welcome_view/presentation/views/widgets/welcome_section.dart';
import 'package:clevtask/core/constant/assets.dart';
import 'package:flutter/material.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(child: Image.asset(Assets.assetsBg)),
          Positioned(
            top: -40,
            left: 0,
            bottom: 0,
            right: 0,

            child: Image.asset(Assets.assetsLogo),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Container(
                width: 343,
                height: 260,
                color: Color(0xff122329),
                child: Column(
                  children: [
                    WelcomeSection(),
                    HaveAnAccount(
                      text: 'Have an account?',
                      action: 'Sign in first',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
