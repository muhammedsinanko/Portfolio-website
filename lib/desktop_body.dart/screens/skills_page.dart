import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height40,
        ),
        nunitoText(
          text: "Skills",
          size: 42,
          weight: FontWeight.w600,
          height: 1,
        ),
        SizedBox(
          height: height32,
        ),

        Container(
          padding:
              EdgeInsets.symmetric(horizontal: height32, vertical: height40),
          //width: screenWidth / 2 - margin,
          //height: 380,
          decoration: ShapeDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xff454545).withOpacity(0.38),
              const Color(0xff6b6b6b).withOpacity(0.1),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            shape: RoundedRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.100,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //!!flutter
              nunitoText(
                text: "Flutter",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height8),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.92;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
              //!!dart
              nunitoText(
                text: "Dart",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height8),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.8;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
              //!!C
              nunitoText(
                text: "C",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.75;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
              //!!firebase
              nunitoText(
                text: "Firebase",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.92;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
              //!!api integration
              nunitoText(
                text: "Api integration",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.92;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),

              //*state management-----
              nunitoText(
                text: "State management",
                size: 25,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.92;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height24,
        ),
        //Center(
        //  child: nunitoText(
        //    text: "Ui Ux",
        //    size: 34,
        //  ),
        //),
        SizedBox(
          height: height8,
        ),
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: height32, vertical: height40),
          //width: screenWidth / 2 - margin,
          decoration: ShapeDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xff454545).withOpacity(0.38),
              const Color(0xff6b6b6b).withOpacity(0.1),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            shape: RoundedRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.100,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*Figma-----
              nunitoText(
                text: "Figma",
                size: 24,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.92;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),

              //*AdobeIllustrator-----
              nunitoText(
                text: "Adobe Photoshop",
                align: TextAlign.left,
                size: 24,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.80;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),

              //*AdobeIllustrator-----
              nunitoText(
                text: "Adobe Illustrator",
                size: 24,
                align: TextAlign.left,
                weight: FontWeight.w500,
              ),
              Container(
                margin: EdgeInsets.only(top: height8, bottom: height16),
                alignment: Alignment.centerLeft,
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * 0.55;
                    return Container(
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        //OtherSkills()
      ],
    );
  }
}
