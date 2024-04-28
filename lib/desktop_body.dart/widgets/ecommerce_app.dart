import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      nunitoText(
        text: "E-Commerce application",
        size: 30,
        weight: FontWeight.w600,
      ),
      SizedBox(
        height: height32,
      ),
      GestureDetector(
        onTap: () {
          Uri url = Uri.parse(
              "https://github.com/muhammedsinanko/E-Commerce-application");
          launchUrl(url, mode: LaunchMode.inAppWebView);
        },
        child: Image.asset(
          "asset/ecommerce.png",
          fit: BoxFit.contain,
          //width: containerAreaHalf - 12,
        ),
      ),
      SizedBox(
        height: height32,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nunitoText(text: "GitHub link  :", size: 18, weight: FontWeight.w600),
          InkWell(
            //style: TextButton.styleFrom(
            //  padding: EdgeInsets.only(bottom: height24),
            //),
            onTap: () {
              Uri url = Uri.parse(
                  "https://github.com/muhammedsinanko/E-Commerce-application");
              launchUrl(url, mode: LaunchMode.inAppWebView);
            },
            child: nunitoText(
              text: "E-Commerce application",
              align: TextAlign.end,
              size: 18,
              weight: FontWeight.w600,
              color: const Color(0xff0029FF),
            ),
          ),
        ],
      ),
    ]);
  }
}
