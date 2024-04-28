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
          nunitoText(
            text: "Tic-Tac-Toe game",
            size: 16,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: height16,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "asset/tictactoefinal.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: height16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              nunitoText(
                  text: "GitHub link :", size: 14, weight: FontWeight.w600),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.transparent,
                ),
                onPressed: lauchProject,
                child: nunitoText(
                  text: "Tic-Tac-Toe game",
                  size: 14,
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

  lauchProject() {
    Uri url = Uri.parse("https://github.com/muhammedsinanko/Tic-Tac-Toe-game");
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }
}
