import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class ECommerceProject extends StatelessWidget {
  const ECommerceProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nunitoText(
          text: "E-Commerce application",
          size: 18,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "asset/ecommerce.png",
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
                text: "GitHub link  :", size: 14, weight: FontWeight.w600),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 6)),
              onPressed: () {
                Uri url = Uri.parse(
                    "https://github.com/muhammedsinanko/E-Commerce-application");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: nunitoText(
                text: "E-Commerce application",
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
