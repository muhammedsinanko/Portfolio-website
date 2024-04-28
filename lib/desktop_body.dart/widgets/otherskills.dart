import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class OtherSkills extends StatelessWidget {
  const OtherSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          quickSandText(
            text: "Other skills",
            size: 35,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: height8,
          ),
          nunitoText(
            text: "C",
            size: 25,
            weight: FontWeight.w500,
          ),
          SizedBox(
            height: height8,
          ),
          nunitoText(
              text: "Responsive design & development",
              size: 25,
              weight: FontWeight.w500),
          SizedBox(
            height: height8,
          ),
          nunitoText(
              text: "Debuggind & Testing", size: 25, weight: FontWeight.w500),
          SizedBox(
            height: height8,
          ),
          nunitoText(text: "Database", size: 25, weight: FontWeight.w500),
          SizedBox(
            height: height8,
          ),
          nunitoText(
              text: "Cross platform development",
              size: 25,
              weight: FontWeight.w500),
          SizedBox(
            height: height8,
          ),
          nunitoText(
              text: "Clean architecture", size: 25, weight: FontWeight.w500),
        ],
      ),
    );
  }
}
