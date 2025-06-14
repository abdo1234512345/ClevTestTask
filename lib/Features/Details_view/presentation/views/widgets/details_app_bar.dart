import 'package:clevtask/Features/Details_view/presentation/views/widgets/bottle_header.dart';
import 'package:clevtask/Features/Details_view/presentation/views/widgets/bottle_tap_bar.dart';
import 'package:clevtask/core/constant/app_colors.dart';
import 'package:clevtask/core/constant/assets.dart';
import 'package:clevtask/core/constant/text_styles.dart';
import 'package:clevtask/core/utils/add_to_my_collection_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(60),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  color: AppColors.primaryColor,
                  child: Text(
                    'Genesis Collection',
                    style: AppTextStyles.subtitle,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                ),
              ],
            ),
            Gap(28),
            Container(
              padding: EdgeInsets.all(8),
              width: 343,
              height: 40,

              color: AppColors.primaryColor,
              child: Row(
                children: [
                  SvgPicture.asset(Assets.assetsdetailsLogo),
                  Gap(8),
                  Text(
                    'Genuine Bottle (Unopened)',
                    style: AppTextStyles.subtitle,
                  ),
                  Spacer(),
                  SvgPicture.asset(Assets.assetsarrowDown),
                ],
              ),
            ),
            Gap(63),
            Image.asset(Assets.assetsBigBottle),
            Gap(40),
            Container(
              width: 380,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: AppColors.secondaryColor),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [BottleHeader(), Gap(20), BottleTabBar(), Gap(20)],
              ),
            ),
            Gap(40),
            AddToMyCollectionBottom(text: 'Add To My Collection'),
            Gap(40),
          ],
        ),
      ),
    );
  }
}
