import 'package:flutter/material.dart';

class BottleHeader extends StatelessWidget {
  const BottleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bottle 135/184', style: TextStyle(color: Colors.white60)),
        SizedBox(height: 4),
        Row(
          children: [
            Text(
              'Talisker ',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '18 Year old',
              style: TextStyle(
                fontSize: 26,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text('#2504', style: TextStyle(fontSize: 22, color: Colors.white)),
      ],
    );
  }
}
