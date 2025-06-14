import 'package:clevtask/core/constant/text_styles.dart';
import 'package:clevtask/core/utils/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            Gap(24),
            Text('Welcome!', style: AppTextStyles.title),
            Gap(8),
            Text('Our Customer', style: AppTextStyles.subtitle),
            Gap(24),
            CustomBotton(text: 'Scan bottle'),
            Gap(24),
          ],
        ),
      ],
    );
  }
}
