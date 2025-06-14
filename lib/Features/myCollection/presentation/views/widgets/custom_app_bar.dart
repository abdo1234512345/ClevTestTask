import 'package:clevtask/core/constant/assets.dart';
import 'package:clevtask/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text("My Collection", style: AppTextStyles.title),
          Spacer(),
          SvgPicture.asset(Assets.assetsAlart),
        ],
      ),
    );
  }
}
