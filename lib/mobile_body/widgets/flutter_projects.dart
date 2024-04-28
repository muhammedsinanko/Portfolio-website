import 'package:flutter/material.dart';
import '../../constants.dart';
import 'ecommerce.dart';
import 'notes_taking.dart';
import 'personalwebsitegithub.dart';
import 'tictactoe.dart';

class FlutterProjects extends StatelessWidget {
  const FlutterProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height24,
        ),
        const ECommerceProject(),
        SizedBox(
          height: height24,
        ),
        NotesTakingApp(
          url: "https://github.com/muhammedsinanko/Notetaking-application",
        ),
        SizedBox(
          height: height24,
        ),
        const Row(
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
