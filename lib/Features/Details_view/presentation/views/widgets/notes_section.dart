import 'package:clevtask/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotesSection extends StatelessWidget {
  final String title;
  final List<String> descriptions;

  const NotesSection({
    super.key,
    required this.title,
    required this.descriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100 + 25,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(8),
            ...descriptions.map(
              (desc) => Text(
                desc,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
