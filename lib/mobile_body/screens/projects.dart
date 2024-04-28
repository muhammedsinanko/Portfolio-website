// ignore_for_file: must_be_immutable

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

import '../widgets/flutter_projects.dart';
import '../widgets/uiux_project.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int selectedIndex = 0;

  List<String> projectType = ["Flutter", "UI/UX"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: height48,
        ),

        quickSandText(
          text: "Projects (3)",
          size: 26,
          weight: FontWeight.w700,
        ),
        SizedBox(
          height: height32 - 2,
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: index == 0 ? const EdgeInsets.only(right: 6) : null,
                  alignment: Alignment.center,
                  width: selectedIndex == index
                      ? screenWidth * 0.75 - 55
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
                          cornerRadius: 18, cornerSmoothing: 1),
                    ),
                  ),
                  child: quickSandText(
                    text: projectType[index],
                    size: 14,
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
        SizedBox(
          height: height24,
        ),

        //*Projects-----
        selectedIndex == 0 ? const FlutterProjects() : const UiUxProjects(),
      ],
    );
  }
}
