import 'package:clevtask/Features/Details_view/presentation/views/widgets/details_app_bar.dart';
import 'package:clevtask/core/constant/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsBg,
          width: double.infinity,
          height: double.infinity,
        ),
        DetailsAppBar(),
      ],
    );
  }
}
