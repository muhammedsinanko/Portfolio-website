import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height48,
        ),
        quickSandText(
          text: "About Me",
          size: 26,
          weight: FontWeight.w700,
          height: 1,
        ),
        SizedBox(
          height: height32 - 6,
        ),
        quickSandText(
          text: "A developer who designs!!",
          size: 24,
          weight: FontWeight.w600,
          color: blueColor,
        ),
        SizedBox(
          height: height24 - 4,
        ),
        nunitoText(
          text:
              "Self learnt UI/UX designer and Flutter developer based on Kozhikkode,Kerala. Curious to learn more about developing scalable distributed systems.Loves designing clean user interface and developing it with readable as well as maintainable code.",
          size: 14,
          letterSpacing: 0.5,
          height: 1.7,
          color: const Color(0xff787878),
        )
      ],
    );
  }
}
