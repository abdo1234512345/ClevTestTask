import 'package:clevtask/Features/myCollection/presentation/views/widgets/custom_bottle_item.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 9,
          mainAxisSpacing: 8,
          childAspectRatio: .5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return BottleItem();
        },
      ),
    );
  }
}
