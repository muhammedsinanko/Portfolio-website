import 'package:flutter/material.dart';

import '../../constants.dart';
import 'notes_taking.dart';
import 'personal_website.dart';
import 'pizza_hut.dart';

class UiUxProjects extends StatelessWidget {
  const UiUxProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height24,
        ),
        const PizzaHutRedesign(),
        SizedBox(
          height: height24,
        ),
        NotesTakingApp(),
        SizedBox(
          height: height24,
        ),
        const PersonalWebsite()
      ],
    );
  }
}
