import 'package:flutter/material.dart';
import 'package:portfolio/desktop_body.dart/widgets/personal_website.dart';

import '../../constants.dart';
import 'notestaking.dart';
import 'pizzahut.dart';

class UiUxProjects extends StatelessWidget {
  const UiUxProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height48,
        ),
        const PizzaHutRedesginDesktop(),
        NotestakingAppDesktop(),
        const PersonalWebsite(),
      ],
    );
  }
}
