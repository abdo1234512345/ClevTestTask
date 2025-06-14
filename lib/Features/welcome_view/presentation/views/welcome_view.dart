import 'package:clevtask/Features/welcome_view/presentation/views/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const routeName = 'welcome_view';
  @override
  Widget build(BuildContext context) {
    return WelcomeViewBody();
  }
}
