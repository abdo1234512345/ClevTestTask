import 'package:clevtask/Features/Details_view/presentation/views/widgets/bottle_detail_item.dart';
import 'package:flutter/widgets.dart';

class BottleDetailList extends StatelessWidget {
  const BottleDetailList({super.key});

  final List<Map<String, String>> details = const [
    {'label': 'Distillery', 'value': 'Text'},
    {'label': 'Region', 'value': 'Text'},
    {'label': 'Country', 'value': 'Text'},
    {'label': 'Type', 'value': 'Text'},
    {'label': 'Age statement', 'value': 'Text'},
    {'label': 'Filled', 'value': 'Text'},
    {'label': 'Bottled', 'value': 'Text'},
    {'label': 'Cask number', 'value': 'Text'},
    {'label': 'ABV', 'value': 'Text'},
    {'label': 'Size', 'value': 'Text'},
    {'label': 'Finish', 'value': 'Text'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          details.map((item) {
            return DetailItem(label: item['label']!, value: item['value']!);
          }).toList(),
    );
  }
}
