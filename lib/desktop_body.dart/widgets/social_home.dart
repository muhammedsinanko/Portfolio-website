import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class SocialHome extends StatefulWidget {
  const SocialHome({super.key});

  @override
  State<SocialHome> createState() => _SocialHomeState();
}

bool isLinkedInHovered = false;
bool isBehanceHovered = false;
bool isGitHubHovered = false;

class _SocialHomeState extends State<SocialHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height24,
        ),
        quickSandText(
          text: "Social",
          size: 20,
          weight: FontWeight.w500,
        ),
        SizedBox(
          height: height8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
//*linkedIn

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
                padding: const EdgeInsets.only(right: 12),
              ),
              onHover: (value) {
                setState(() {
                  isLinkedInHovered = value;
                });
              },
              onPressed: () {
                //lauch url
                Uri url = Uri.parse(
                    "https://www.linkedin.com/in/muhammed-sinan-684aa726a");
                launchUrl(
                  url,
                  mode: LaunchMode.inAppWebView,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: isLinkedInHovered == true
                      ? Border(
                          bottom: BorderSide(
                              color: Colors.white.withOpacity(0.8), width: 1),
                        )
                      : null,
                ),
                child: nunitoText(
                    text: "Linked In",
                    color: isLinkedInHovered == true
                        ? Colors.white
                        : lightTextColor,
                    size: 20,
                    height: 1.1,
                    weight: FontWeight.w500),
              ),
            ),
            nunitoText(
                text: " / ",
                color: lightTextColor.withOpacity(0.3),
                size: 20,
                weight: FontWeight.w600),
//*Behance

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),
              onHover: (value) {
                setState(() {
                  isBehanceHovered = value;
                });
              },
              onPressed: () {
                //lauch url
                Uri url = Uri.parse("https://www.behance.net/muhammadsinan9");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: isBehanceHovered == true
                      ? Border(
                          bottom: BorderSide(
                              color: Colors.white.withOpacity(0.8), width: 1))
                      : null,
                ),
                child: nunitoText(
                    text: "Behance",
                    color: isBehanceHovered == true
                        ? Colors.white
                        : lightTextColor,
                    size: 20,
                    height: 1.1,
                    weight: FontWeight.w500),
              ),
            ),
            nunitoText(
                text: " / ",
                color: lightTextColor.withOpacity(0.3),
                size: 20,
                weight: FontWeight.w600),
//*GitHub

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),
              onHover: (value) {
                setState(() {
                  isGitHubHovered = value;
                });
              },
              onPressed: () {
//lauch url
                Uri url = Uri.parse("https://github.com/muhammedsinanko");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: isGitHubHovered == true
                        ? Border(
                            bottom: BorderSide(
                                color: Colors.white.withOpacity(0.8), width: 1),
                          )
                        : null),
                child: nunitoText(
                  text: "GitHub",
                  height: 1.1,
                  color:
                      isGitHubHovered == true ? Colors.white : lightTextColor,
                  size: 20,
                  weight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
