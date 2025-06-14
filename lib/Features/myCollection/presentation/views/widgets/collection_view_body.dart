import 'package:clevtask/Features/myCollection/presentation/views/widgets/custom_app_bar.dart';
import 'package:clevtask/Features/myCollection/presentation/views/widgets/custom_grid_view.dart';
import 'package:clevtask/Features/myCollection/presentation/views/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CollectionViewBody extends StatelessWidget {
  const CollectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [Gap(60), CustomAppBar(), CustomGridView()],
            ),
          ),
          NavBar(),
        ],
      ),
    );
  }
}
