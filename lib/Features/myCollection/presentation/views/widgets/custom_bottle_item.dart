import 'package:clevtask/Features/Details_view/presentation/views/details_view.dart';
import 'package:clevtask/core/constant/app_colors.dart';
import 'package:clevtask/core/constant/assets.dart';
import 'package:clevtask/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottleItem extends StatelessWidget {
  const BottleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailsView.routeName);
      },
      child: Container(
        color: AppColors.secondaryColor,
        width: 168,
        height: 313,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Gap(16),
              Image.asset(Assets.assetsoneCaskBottle, width: 122, height: 170),
              Gap(25),
              Text(
                'Springbank',
                style: AppTextStyles.title.copyWith(fontSize: 20),
              ),
              Gap(2),
              Text(
                '1992#1234',
                style: AppTextStyles.title.copyWith(fontSize: 20),
              ),
              Gap(6),
              Text('(112/158)', style: AppTextStyles.subtitle),
            ],
          ),
        ),
      ),
    );
  }
}
