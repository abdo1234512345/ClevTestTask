import 'package:clevtask/Features/Details_view/presentation/views/widgets/bottle_details_list.dart';
import 'package:clevtask/Features/Details_view/presentation/views/widgets/history.dart';
import 'package:clevtask/Features/Details_view/presentation/views/widgets/tasing_widget.dart';
import 'package:flutter/material.dart';

class BottleTabBar extends StatefulWidget {
  const BottleTabBar({super.key});

  @override
  State<BottleTabBar> createState() => _BottleTabBarState();
}

class _BottleTabBarState extends State<BottleTabBar> {
  int selectedIndex = 0;

  final List<String> tabs = ['Details', 'Tasting notes', 'History'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF0D1B2A),
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.all(4),
          child: Row(
            children: List.generate(tabs.length, (index) {
              final isSelected = selectedIndex == index;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? const Color(0xFFFFA500)
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: isSelected ? Colors.black : Colors.white70,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 20),
        if (selectedIndex == 0)
          const BottleDetailList()
        else if (selectedIndex == 1)
          const TastingNotesWidget()
        else
          const History(),
      ],
    );
  }
}
