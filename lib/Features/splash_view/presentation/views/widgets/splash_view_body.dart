import 'dart:async';
import 'package:clevtask/Features/welcome_view/presentation/views/welcome_view.dart';
import 'package:clevtask/core/constant/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, WelcomeView.routeName);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsBg, fit: BoxFit.cover, width: double.infinity),
        Center(
          child: FadeTransition(
            opacity: _animation,
            child: Image.asset(Assets.assetsLogo),
          ),
        ),
      ],
    );
  }
}
