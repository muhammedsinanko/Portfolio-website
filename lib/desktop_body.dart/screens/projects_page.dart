// ignore_for_file: must_be_immutable

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../widgets/flutter_projects.dart';
import '../widgets/uiux_projects.dart';

class ProjectPage extends StatefulWidget {
  double horMargin;
  ProjectPage({super.key, required this.horMargin});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List<String> projectType = [
    "Flutter",
    "Ui Ux",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double horMargin = widget.horMargin;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height80,
        ),
        quickSandText(
          text: "Projects (3)",
          size: 42,
          weight: FontWeight.w600,
        ),
        SizedBox(
          height: height56,
        ),
        SizedBox(
          height: 55,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(
                    () {
                      selectedIndex = index;
                    },
                  );
                },
                child: Container(
                  margin: index == 0 ? EdgeInsets.only(right: height8) : null,
                  alignment: Alignment.center,
                  width: selectedIndex == index
                      ? screenWidth / 1.5 - (horMargin + height8)
                      : screenWidth * 0.25,
                  decoration: ShapeDecoration(
                    color: selectedIndex == index
                        ? const Color(0xff3b3b3b)
                        : Colors.transparent,
                    shape: SmoothRectangleBorder(
                      side: selectedIndex == index
                          ? BorderSide.none
                          : const BorderSide(
                              color: Color(0xff3b3b3b),
                              width: 1.5,
                              strokeAlign: BorderSide.strokeAlignCenter),
                      borderRadius: SmoothBorderRadius(
                        cornerRadius: 18,
                        cornerSmoothing: 1,
                      ),
                    ),
                  ),
                  child: quickSandText(
                    text: projectType[index],
                    size: 25,
                    color: selectedIndex == index ? blueColor : Colors.white,
                    weight: selectedIndex == index
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                ),
              );
            },
          ),
        ),

        //*projects-----
        selectedIndex == 0 ? const FlutterProjects() : const UiUxProjects(),
      ],
    );
  }
}
