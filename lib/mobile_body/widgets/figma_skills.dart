import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class FigmaSkills extends StatelessWidget {
  const FigmaSkills({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double margin = 32;
    return Expanded(
      flex: 1,
      child: Container(
        height: 385,
        //width: screenWidth / 2 - margin,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        decoration: ShapeDecoration(
          gradient: LinearGradient(colors: [
            const Color(0xff454545).withOpacity(0.38),
            const Color(0xff6b6b6b).withOpacity(0.1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          shape: RoundedRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 24,
              cornerSmoothing: 0.100,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //*Figma-----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nunitoText(
                  text: "Figma",
                  size: 16,
                  weight: FontWeight.w500,
                ),
                Container(
                  margin: EdgeInsets.only(top: height8, bottom: height16),
                  alignment: Alignment.centerLeft,
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(3),
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

            //*AdobePhotoshop-----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nunitoText(
                  text: "Adobe photoshop",
                  align: TextAlign.left,
                  size: 16,
                  weight: FontWeight.w500,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height8,
                    bottom: height16,
                  ),
                  alignment: Alignment.centerLeft,
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(3),
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

            //*adobeIllustrator-----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nunitoText(
                  text: "Adobe Illustrator",
                  size: 16,
                  align: TextAlign.left,
                  weight: FontWeight.w500,
                ),
                Container(
                  margin: EdgeInsets.only(top: height8, bottom: height16),
                  alignment: Alignment.centerLeft,
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(3),
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
              ],
            ),

            //*responsive design-----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                nunitoText(
                  text: "Resonsive design",
                  align: TextAlign.left,
                  size: 16,
                  weight: FontWeight.w500,
                ),
                Container(
                  margin: EdgeInsets.only(top: height8),
                  alignment: Alignment.centerLeft,
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(3),
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
          ],
        ),
      ),
    );
  }
}
