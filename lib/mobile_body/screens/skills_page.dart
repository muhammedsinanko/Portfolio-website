// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/mobile_body/widgets/figma_skills.dart';
import 'package:portfolio/mobile_body/widgets/flutter_skills.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int margin = 32;
    return Column(
      children: [
        SizedBox(
          height: height40,
        ),
        quickSandText(
          text: "Skills",
          size: 26,
          weight: FontWeight.w700,
        ),
        SizedBox(
          height: height32,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*Flutterskills-----
            FlutterSkills(),

            SizedBox(
              width: 8,
            ),

            //*Figmaskills-----
            FigmaSkills()
          ],
        ),
      ],
    );
  }
}
