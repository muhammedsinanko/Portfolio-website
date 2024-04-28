import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class PizzaHutRedesginDesktop extends StatefulWidget {
  const PizzaHutRedesginDesktop({
    super.key,
  });

  @override
  State<PizzaHutRedesginDesktop> createState() =>
      _PizzaHutRedesginDesktopState();
}

class _PizzaHutRedesginDesktopState extends State<PizzaHutRedesginDesktop> {
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double horMargin = screenWidth / 12;
    //double containerAera = screenWidth - horMargin;
    //double containerAreaHalf = containerAera / 2;
    return Column(
      children: [
        nunitoText(
          text: "Food delivery application",
          size: 30,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height40,
        ),
        GestureDetector(
          onTap: () {
            Uri url = Uri.parse(
                "https://www.behance.net/gallery/194462863/Pizza-Hut?");
            launchUrl(url, mode: LaunchMode.inAppWebView);
          },
          child: Image.asset(
            "asset/pizza hut.png",
            fit: BoxFit.contain,
            //width: containerAreaHalf - 12,
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
              onTap: () {
                Uri url = Uri.parse(
                    "https://www.behance.net/gallery/194462863/Pizza-Hut?");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: nunitoText(
                text: "Pizza Hut redesign",
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
}
