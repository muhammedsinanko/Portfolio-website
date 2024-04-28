import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class PizzaHutRedesign extends StatelessWidget {
  const PizzaHutRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nunitoText(
          text: "Food delivery application",
          size: 18,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "asset/pizza hut.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: height16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nunitoText(
                text: "Behance link  :", size: 14, weight: FontWeight.w600),
            TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8)),
              onPressed: () {
                Uri url = Uri.parse(
                    "https://www.behance.net/gallery/194462863/Pizza-Hut");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: nunitoText(
                text: "Food delivery application",
                size: 14,
                weight: FontWeight.w600,
                color: const Color(0xff0029FF),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
