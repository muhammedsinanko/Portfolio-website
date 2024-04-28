// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class PersonalWebsite extends StatelessWidget {
  const PersonalWebsite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                text: "Behance link  :   ", size: 18, weight: FontWeight.w600),
            InkWell(
              onTap: launchProjectUrl,
              child: nunitoText(
                text: "Personal website",
                size: 18,
                weight: FontWeight.w600,
                color: const Color(0xff0029FF),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //*lauchurlfunction
  launchProjectUrl() {
    //*launch behance
    Uri url =
        Uri.parse("https://www.behance.net/gallery/197282183/Portfolio-2024");
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }
}
