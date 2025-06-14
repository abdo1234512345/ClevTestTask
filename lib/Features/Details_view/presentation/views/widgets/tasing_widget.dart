import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'notes_section.dart';

class TastingNotesWidget extends StatelessWidget {
  const TastingNotesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 233,
            width: 311,

            color: Color(0xff0B1519),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
          Gap(20),
          const Text(
            'Tasting notes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'by Charles MacLean MBE',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 16),

          // Sections
          const NotesSection(
            title: 'Nose',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),
          const NotesSection(
            title: 'Palate',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),
          const NotesSection(
            title: 'Finish',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: const [
                Text(
                  'Your notes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_back, color: Colors.white, size: 20),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // User note sections
          const NotesSection(
            title: 'Nose',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),
          const NotesSection(
            title: 'Palate',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),
          const NotesSection(
            title: 'Finish',
            descriptions: ['Description', 'Description', 'Description'],
          ),
          Gap(8),
        ],
      ),
    );
  }
}
