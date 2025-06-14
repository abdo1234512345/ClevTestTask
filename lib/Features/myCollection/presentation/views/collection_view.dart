import 'package:clevtask/Features/myCollection/presentation/views/widgets/collection_view_body.dart';
import 'package:clevtask/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});
  static const String routeName = 'Collection_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CollectionViewBody(),
    );
  }
}
