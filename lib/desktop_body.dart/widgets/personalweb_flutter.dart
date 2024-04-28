import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class PersonalWebsiteFlutter extends StatelessWidget {
  const PersonalWebsiteFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(children: [
        SizedBox(
          height: height72,
        ),
        nunitoText(
          text: "Personal website",
          size: 30,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height40,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "asset/personal website.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: height32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nunitoText(
                text: "GitHub link  :   ", size: 18, weight: FontWeight.w600),
            InkWell(
              onTap: () {
                Uri url = Uri.parse(
                    "https://www.behance.net/gallery/194462863/Pizza-Hut?");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: nunitoText(
                text: "Personal website",
                size: 18,
                weight: FontWeight.w600,
                color: const Color(0xff0029FF),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
