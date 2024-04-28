// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class NotesTakingApp extends StatelessWidget {
  String? url;
  NotesTakingApp({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    String urlWebApp = url != null ? "GitHub link" : "Behance link";
    return Column(
      children: [
        nunitoText(
          text: "Notes taking app",
          size: 18,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "asset/notestaking.png",
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
                text: "$urlWebApp  :", size: 14, weight: FontWeight.w600),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
              onPressed: lauchPrjectUrl,
              child: nunitoText(
                text: "Notes taking app",
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

  lauchPrjectUrl() {
    if (url != null) {
      Uri urlParsed = Uri.parse(url!);
      launchUrl(urlParsed, mode: LaunchMode.inAppWebView);
    } else {
      Uri urlParsed = Uri.parse(
          "https://www.behance.net/gallery/194538123/Notes-taking-application?");
      launchUrl(urlParsed, mode: LaunchMode.inAppWebView);
    }
  }
}
