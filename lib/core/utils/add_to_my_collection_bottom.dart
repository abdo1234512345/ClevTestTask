import 'package:clevtask/core/constant/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddToMyCollectionBottom extends StatelessWidget {
  const AddToMyCollectionBottom({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 230,
        decoration: BoxDecoration(
          color: Color(0xffd49a00),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.add),
                Gap(8),
                Text(text, style: AppTextStyles.button),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
