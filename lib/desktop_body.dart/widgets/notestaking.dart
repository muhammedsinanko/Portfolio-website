// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class NotestakingAppDesktop extends StatelessWidget {
  String? url;
  NotestakingAppDesktop({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    String urlWebApp = url != null ? "GitHub link" : "Behance link";
    return Column(children: [
      SizedBox(
        height: height72,
      ),
      nunitoText(
        text: "Notes taking application",
        size: 30,
        weight: FontWeight.w600,
      ),
      SizedBox(
        height: height32,
      ),
      Image.asset(
        "asset/notestaking.png",
        fit: BoxFit.contain,
        //width: containerAreaHalf - 12,
      ),
      SizedBox(
        height: height32,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nunitoText(
              text: "$urlWebApp  :   ", size: 18, weight: FontWeight.w600),
          InkWell(
            onTap: lauchPrjectUrl,
            child: nunitoText(
              text: "Notes taking application",
              size: 18,
              weight: FontWeight.w600,
              color: const Color(0xff0029FF),
            ),
          ),
        ],
      ),
    ]);
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
