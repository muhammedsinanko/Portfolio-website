// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/desktop_body.dart/widgets/social_home.dart';
import 'package:figma_squircle/figma_squircle.dart';

class HomeDesktopPage extends StatelessWidget {
  GlobalKey projectWidgetKey;
  HomeDesktopPage({super.key, required this.projectWidgetKey});

  scrollToProjectsPage(GlobalKey widgetKey) async {
    final context = widgetKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height24,
              ),
              quickSandText(
                text: "Iam Muhammed Sinan,",
                size: 22,
                weight: FontWeight.w500,
                color: lightTextColor,
              ),
              const SizedBox(
                height: 2,
              ),
              quickSandText(
                align: TextAlign.start,
                text: "Flutter developer &\nUi Ux designer",
                height: 1.2,
                color: blueColor,
                weight: FontWeight.w500,
                size: 64,
              ),
              SizedBox(
                height: height8 + 4,
              ),
              SizedBox(
                width: screenWidth / 1.9,
                child: nunitoText(
                    text:
                        "Skilled in designing and developing user friendly and clean applications, Self learnt Flutter developer with a strong backround in cross-platform mobile application development. Profitient designing and developing  robust and user-friendly applications and optimising UI/UX design.",
                    size: 16,
                    letterSpacing: 0.6,
                    maxLines: 5,
                    height: 1.6,
                    color: const Color(0xff787878),
                    align: TextAlign.start),
              ),
              SizedBox(
                height: height24 + 4,
              ),

              //*ProjectButton-----
              SizedBox(
                height: 40,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      shadowColor: primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: SmoothBorderRadius.all(SmoothRadius(
                            cornerRadius: 6, cornerSmoothing: 100)),
                      ),
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 12,
                      )),
                  onPressed: () {
                    scrollToProjectsPage(projectWidgetKey);
                  },
                  icon: nunitoText(
                    text: "Projects",
                    weight: FontWeight.w500,
                    size: 18,
                  ),
                  label: const Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              const SocialHome(),
            ],
          ),
        ),

        //*logo image-----
        Expanded(
          flex: 1,
          child: Image.asset(
            "asset/logo.png",
            height: 403.89 * 1.2,
            width: 375.89 * 1.2,
          ),
        ),
      ],
    );
  }
}
