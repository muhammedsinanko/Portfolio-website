import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class FlutterSkills extends StatelessWidget {
  const FlutterSkills({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double margin = 32;
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            height: 385,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            //width: screenWidth / 2 - margin,
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
                //*flutter-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "Flutter",
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height8),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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

                //*dart-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "Dart",
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height8),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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
                  ],
                ),

                //*C-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "C",
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height16),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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

                //*firebase-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "Firebase",
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height16),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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

                //*api integration-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "Api integration",
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height16),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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

                //*state management-----
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nunitoText(
                      text: "State management",
                      size: 16,
                      weight: FontWeight.w500,
                      align: TextAlign.start,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height8, bottom: height16),
                      alignment: Alignment.centerLeft,
                      height: 8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
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
        ],
      ),
    );
  }
}
