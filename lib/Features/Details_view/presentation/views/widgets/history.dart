import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomCard(), CustomCard()]);
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xFF0E1A1F), // خلفية شبه الصورة
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Label',
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
            const SizedBox(height: 4),
            const Text(
              'Title',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 8),
            const Text(
              'Description',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const Text(
              'Description',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                Icon(Icons.attach_file, color: Colors.white60, size: 16),
                SizedBox(width: 4),
                Text(
                  'Attachments',
                  style: TextStyle(color: Colors.white60, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
