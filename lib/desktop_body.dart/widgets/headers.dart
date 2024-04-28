// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../constants.dart';

class Headers extends StatefulWidget {
  GlobalKey homeWidgetKey,
      aboutMeWidgetKey,
      projectsWidgetKey,
      skillsWidgetKey,
      contactWidgetKey;
  Headers({
    super.key,
    required this.homeWidgetKey,
    required this.aboutMeWidgetKey,
    required this.projectsWidgetKey,
    required this.skillsWidgetKey,
    required this.contactWidgetKey,
  });

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  scrollToPage(GlobalKey widgetKey) async {
    final context = widgetKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(seconds: 1));
  }

  bool isHomeHover = false;
  bool isAboutMeHover = false;
  bool isProjectsHover = false;
  bool isSkillsHover = false;
  bool isContactHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              backgroundColor: backroundColor,
              padding: EdgeInsets.symmetric(horizontal: height16)),
          onHover: (value) {
            setState(() {
              isHomeHover = value;
            });
          },
          onPressed: () {
            scrollToPage(widget.homeWidgetKey);
          },
          child: Container(
            decoration: BoxDecoration(
                border: isHomeHover == true
                    ? Border(
                        bottom: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1.2),
                      )
                    : null),
            child: quickSandText(
                text: "Home",
                size: 16,
                height: 1.1,
                weight: FontWeight.w600,
                color: isHomeHover == true ? Colors.white : lightTextColor),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: height16)),
          onHover: (value) {
            setState(() {
              isAboutMeHover = value;
            });
          },
          onPressed: () {
            scrollToPage(widget.aboutMeWidgetKey);
          },
          child: Container(
            decoration: BoxDecoration(
                border: isAboutMeHover == true
                    ? Border(
                        bottom: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1.2),
                      )
                    : null),
            child: quickSandText(
                text: "About Me",
                size: 16,
                height: 1.1,
                weight: FontWeight.w600,
                color: isAboutMeHover == true ? Colors.white : lightTextColor),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              backgroundColor: backroundColor,
              padding: EdgeInsets.symmetric(horizontal: height16)),
          onHover: (value) {
            setState(() {
              isProjectsHover = value;
            });
          },
          onPressed: () {
            scrollToPage(widget.projectsWidgetKey);
          },
          child: Container(
            decoration: BoxDecoration(
                border: isProjectsHover == true
                    ? Border(
                        bottom: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1.2),
                      )
                    : null),
            child: quickSandText(
                text: "Projects",
                size: 16,
                height: 1.1,
                weight: FontWeight.w600,
                color: isProjectsHover == true ? Colors.white : lightTextColor),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              backgroundColor: backroundColor,
              padding: EdgeInsets.symmetric(horizontal: height16 - 4)),
          onHover: (value) {
            setState(() {
              isSkillsHover = value;
            });
          },
          onPressed: () {
            scrollToPage(widget.skillsWidgetKey);
          },
          child: Container(
            decoration: BoxDecoration(
                border: isSkillsHover == true
                    ? Border(
                        bottom: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1.2),
                      )
                    : null),
            child: quickSandText(
                text: "Skills",
                size: 16,
                height: 1.1,
                weight: FontWeight.w600,
                color: isSkillsHover == true ? Colors.white : lightTextColor),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              backgroundColor: backroundColor,
              padding: EdgeInsets.only(left: height16)),
          onHover: (value) {
            setState(() {
              isContactHover = value;
            });
          },
          onPressed: () {
            scrollToPage(widget.contactWidgetKey);
          },
          child: Container(
            decoration: BoxDecoration(
                border: isContactHover == true
                    ? Border(
                        bottom: BorderSide(
                            color: Colors.white.withOpacity(0.8), width: 1.2),
                      )
                    : null),
            child: quickSandText(
                text: "Contact",
                size: 16,
                height: 1.1,
                weight: FontWeight.w600,
                color: isContactHover == true ? Colors.white : lightTextColor),
          ),
        ),
      ],
    );
  }
}
