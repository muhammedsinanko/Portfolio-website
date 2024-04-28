import 'package:flutter/material.dart';

import '../../constants.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height80,
        ),
        nunitoText(
          text: "About Me",
          size: 42,
          weight: FontWeight.w600,
          height: 1,
        ),
        SizedBox(
          height: height32,
        ),
        quickSandText(
          text: "A developer who designs!",
          size: 64,
          weight: FontWeight.w600,
          color: blueColor,
        ),
        SizedBox(
          height: height16,
        ),
        nunitoText(
          align: TextAlign.start,
          text:
              "Self learnt UI/UX designer and Flutter developer based on Kozhikkode, Kerala. Curious to learn more about developing scalable distributed systems. Loves designing clean user interface and developing it with readable as well as maintainable code.",
          size: 29,
          letterSpacing: 0.5,
          color: const Color(0xff787878),
        ),
      ],
    );
  }
}
