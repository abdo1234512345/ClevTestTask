import 'package:clevtask/Features/Details_view/presentation/views/widgets/details_view_body.dart';
import 'package:clevtask/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const String routeName = 'Details_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: DetailsViewBody(),
    );
  }
}
