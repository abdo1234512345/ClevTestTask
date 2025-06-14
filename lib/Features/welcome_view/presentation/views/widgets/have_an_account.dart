import 'package:clevtask/Features/sign%20in/presentation/views/sign_in_view.dart';
import 'package:clevtask/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key, required this.text, required this.action});
  final String text, action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.subtitle),
        Gap(12),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignInView.routeName);
          },
          child: Text(action, style: AppTextStyles.link),
        ),
      ],
    );
  }
}
