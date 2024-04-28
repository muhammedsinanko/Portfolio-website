import 'package:flutter/material.dart';

import '../../constants.dart';

class OtherSkills extends StatelessWidget {
  const OtherSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height40,
          ),
          quickSandText(
            text: "Other skills",
            size: 22,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: height24,
          ),
          nunitoText(
            text: "C",
            size: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          nunitoText(text: "Responsive design & development", size: 16),
          const SizedBox(
            height: 4,
          ),
          nunitoText(
            text: "Debuggind & Testing",
            size: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          nunitoText(
            text: "Database",
            size: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          nunitoText(
            text: "Cross platform development",
            size: 16,
          ),
          const SizedBox(
            height: 4,
          ),
          nunitoText(
            text: "Clean architecture",
            size: 16,
          ),
        ],
      ),
    );
  }
}
