// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/mobile_body/screens/about_me.dart';
import 'package:portfolio/mobile_body/screens/contact_page.dart';
import 'package:portfolio/mobile_body/screens/homepage.dart';
import 'package:portfolio/mobile_body/screens/projects.dart';
import 'package:portfolio/mobile_body/screens/skills_page.dart';

import '../widgets/other_skills.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});
  final itemkey = GlobalKey();
  Future<Widget> showLoader() async {
    return Future.delayed(Duration(seconds: 0), () {
      return CircularProgressIndicator();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    //log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: backroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: height24, vertical: 28),
          child: FutureBuilder(
              future: showLoader(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  log(screenHeight.toString());
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //home page
                        HomePage(itemkey: itemkey),

                        //about page
                        AboutMePage(),

                        //project page
                        Container(
                          key: itemkey,
                          child: ProjectsPage(),
                        ),

                        //skill page
                        SkillsPage(),

                        //other skills containter
                        const OtherSkills(),

                        //contact page
                        ContactPage(),
                      ],
                    ),
                  );
                } else {
                  //*showloader
                  return Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenHeight / 2.5,
                        ),
                        LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          width: screenWidth / 1.5,
                          animation: true,
                          animationDuration: 4000,
                          lineHeight: 2,
                          curve: Curves.bounceIn,
                          percent: 1,
                          linearStrokeCap: LinearStrokeCap.round,
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
    );
  }
}
