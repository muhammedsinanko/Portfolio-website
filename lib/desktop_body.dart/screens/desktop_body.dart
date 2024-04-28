// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/desktop_body.dart/screens/aboutme_page.dart';
import 'package:portfolio/desktop_body.dart/screens/contact_page.dart';
import 'package:portfolio/desktop_body.dart/screens/home_page.dart';
import 'package:portfolio/desktop_body.dart/screens/projects_page.dart';
import 'package:portfolio/desktop_body.dart/screens/skills_page.dart';

import '../widgets/headers.dart';

class DesktopBody extends StatelessWidget {
  DesktopBody({super.key});

  List<Widget> headers = [
    nunitoText(
      text: "Home",
      size: 16,
      weight: FontWeight.w600,
    ),
    nunitoText(
      text: "ABout Me",
      size: 16,
      weight: FontWeight.w600,
    ),
    nunitoText(
      text: "Projects",
      size: 16,
      weight: FontWeight.w600,
    ),
    nunitoText(
      text: "Skills",
      size: 16,
      weight: FontWeight.w600,
    ),
    nunitoText(
      text: "Contact",
      size: 16,
      weight: FontWeight.w600,
    ),
  ];
  GlobalKey homeWidgetKey = GlobalKey();
  GlobalKey aboutMeWidgetKey = GlobalKey();
  GlobalKey projectsWidgetKey = GlobalKey();
  GlobalKey skillsWidgetKey = GlobalKey();
  GlobalKey contactWidgetKey = GlobalKey();
  Future<Widget> showLoader() async {
    return Future.delayed(const Duration(seconds: 2), () {
      return const CircularProgressIndicator();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double horMargin = screenWidth / 12;
    return Scaffold(
      backgroundColor: backroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horMargin,
              vertical: height32,
            ),
            child: FutureBuilder(
                future: showLoader(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    //*showwidgets-----
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Headers(
                            homeWidgetKey: homeWidgetKey,
                            aboutMeWidgetKey: aboutMeWidgetKey,
                            projectsWidgetKey: projectsWidgetKey,
                            skillsWidgetKey: skillsWidgetKey,
                            contactWidgetKey: contactWidgetKey,
                          ),
                          Container(
                              key: homeWidgetKey,
                              child: HomeDesktopPage(
                                projectWidgetKey: projectsWidgetKey,
                              )),
                          Container(
                              key: aboutMeWidgetKey,
                              child: const AboutMePage()),
                          Container(
                              key: projectsWidgetKey,
                              child: ProjectPage(horMargin: horMargin)),
                          Container(
                              key: skillsWidgetKey, child: const SkillsPage()),
                          Container(
                              key: contactWidgetKey, child: const ContactPage())
                        ],
                      ),
                    );
                  } else {
                    //*showloaderfor2sec-----

                    return Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: screenHeight / 2.5,
                          ),
                          LinearPercentIndicator(
                            alignment: MainAxisAlignment.center,
                            width: screenWidth / 3,
                            animation: true,
                            animationDuration: 2000,
                            lineHeight: 3,
                            curve: Curves.bounceIn,
                            percent: 1,
                            barRadius: const Radius.circular(4),
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                          ),
                          SizedBox(
                            height: height16,
                          ),
                          nunitoText(text: "    featching data...", size: 12)
                        ]);
                  }
                }),
          ),
        ),
      ),
    );
  }
}
