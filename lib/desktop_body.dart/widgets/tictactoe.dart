import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            height: height72,
          ),
          nunitoText(
            text: "Tic Tac Toe game",
            size: 30,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: height40,
          ),
          GestureDetector(
            onTap: () {
              Uri url = Uri.parse(
                  "https://github.com/muhammedsinanko/Tic-Tac-Toe-game");
              launchUrl(url, mode: LaunchMode.inAppWebView);
            },
            child: Image.asset(
              "asset/tictactoefinal.png",
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
                  text: "GitHub link  :   ", size: 18, weight: FontWeight.w600),
              InkWell(
                onTap: () {
                  Uri url = Uri.parse(
                      "https://github.com/muhammedsinanko/Tic-Tac-Toe-game");
                  launchUrl(url, mode: LaunchMode.inAppWebView);
                },
                child: nunitoText(
                  text: "Tic Tac Toe game",
                  size: 18,
                  weight: FontWeight.w600,
                  color: const Color(0xff0029FF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
