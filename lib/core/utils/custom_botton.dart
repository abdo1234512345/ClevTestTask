import 'package:clevtask/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 311,
        decoration: BoxDecoration(
          color: Color(0xffd49a00),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(text, style: AppTextStyles.button)),
      ),
    );
  }
}
