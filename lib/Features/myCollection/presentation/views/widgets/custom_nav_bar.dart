// ignore_for_file: deprecated_member_use

import 'package:clevtask/core/constant/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> menuItems = [
    {'iconPath': Assets.assetsLogosScanlogo, 'text': 'Scan'},
    {'iconPath': Assets.assetsLogosCollectionslogo, 'text': 'Collection'},
    {'iconPath': Assets.assetsBottle, 'text': 'Shop'},
    {'iconPath': Assets.assetsLogosSettingslogo, 'text': 'Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0b1519),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(menuItems.length, (index) {
          final item = menuItems[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  item['iconPath'],
                  height: isSelected ? 30 : 24,
                  color: isSelected ? Colors.white : Colors.grey[400],
                ),
                const SizedBox(height: 4),
                Text(
                  item['text'],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey[400],
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
