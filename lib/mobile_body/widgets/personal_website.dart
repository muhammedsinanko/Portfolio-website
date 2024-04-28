import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class PersonalWebsite extends StatelessWidget {
  const PersonalWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nunitoText(
          text: "Personal website",
          size: 18,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "asset/personal website.png",
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
              ),
              onPressed: () {
                Uri url = Uri.parse(
                    "https://www.behance.net/gallery/197282183/Portfolio-2024");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: nunitoText(
                text: "Portfolio website",
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
