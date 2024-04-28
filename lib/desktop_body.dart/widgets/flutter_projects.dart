import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/desktop_body.dart/widgets/notestaking.dart';
import 'package:portfolio/desktop_body.dart/widgets/tictactoe.dart';

import 'ecommerce_app.dart';
import 'personalweb_flutter.dart';

class FlutterProjects extends StatelessWidget {
  const FlutterProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height48,
        ),
        const ECommerceApp(),
        NotestakingAppDesktop(
          url: "https://github.com/muhammedsinanko/Notetaking-application",
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PersonalWebsiteFlutter(),
            SizedBox(
              width: 8,
            ),
            TicTacToe(),
          ],
        ),
      ],
    );
  }
}
