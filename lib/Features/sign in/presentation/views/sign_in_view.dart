import 'package:clevtask/Features/sign%20in/presentation/views/widgets/sign_in_view_body.dart';
import 'package:clevtask/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'Sign In View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },

          child: Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SignInViewBody(),
    );
  }
}
