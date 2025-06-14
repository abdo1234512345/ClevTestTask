import 'package:clevtask/Features/splash_view/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: SplashViewBody());
  }
}
