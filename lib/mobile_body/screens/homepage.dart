// ignore_for_file: must_be_immutable
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class HomePage extends StatelessWidget {
  GlobalKey<State<StatefulWidget>> itemkey;
  HomePage({super.key, required this.itemkey});
  scrollToItem(GlobalKey<State<StatefulWidget>> itemkey) async {
    final context = itemkey.currentContext;
    await Scrollable.ensureVisible(context!,
        alignment: 0.06, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height8,
        ),
        quickSandText(
          text: "Iam Muhammed Sinan,",
          weight: FontWeight.w500,
          //color: lightTextColor,
          size: 18,
        ),
        SizedBox(
          height: height16,
        ),
        quickSandText(
          text: " Flutter Developer &",
          weight: FontWeight.w500,
          size: 31,
          color: blueColor,
          height: 1,
        ),
        //const SizedBox(
        //  height: 6,
        //),
        quickSandText(
          text: "UI/Ux Designer",
          weight: FontWeight.w500,
          size: 31,
          color: blueColor,
        ),
        SizedBox(
          height: height16,
        ),
        nunitoText(
          text:
              "Skilled in designing user friendly , clean applications and developing it with flutter, Self learned Flutter developer with a strong backround in cross-platform mobile application development. Profitient designing and developing  robust and user-friendly applications, optimising UI/UX design,",
          size: 14,
          letterSpacing: 0.5,
          height: 1.7,
          color: const Color(0xff787878),
        ),
        SizedBox(
          height: height24,
        ),

//*project button-----
        SizedBox(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: const SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius.all(
                      SmoothRadius(cornerRadius: 14, cornerSmoothing: 1))),
              padding: const EdgeInsets.only(
                  left: 16, right: 12, top: 10, bottom: 10),
              backgroundColor: primaryColor,
            ),
            onPressed: () {
              scrollToItem(itemkey);
            },
            icon: quickSandText(
                text: "Projects", size: 16, weight: FontWeight.w600),
            label: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: height16,
        ),
        const SizedBox(
          height: 4,
        ),

//*Social-----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            quickSandText(
              text: "Social  : ",
              color: Colors.white,
              size: 16,
              weight: FontWeight.w500,
            ),
            //linkedIn textbutton
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                horizontal: height8,
              )),
              onPressed: () {
                Uri url = Uri.parse(
                    "https://www.linkedin.com/in/muhammed-sinan-684aa726a");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: lightTextColor),
                  ),
                ),
                child: nunitoText(
                  text: "Linked In",
                  weight: FontWeight.w600, height: 1.3,
                  //color: lightTextColor,
                  size: 14,
                ),
              ),
            ),
            nunitoText(
              text: "/",
              color: lightTextColor.withOpacity(0.3),
            ),
            //Behance textbutton
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: height8)),
              onPressed: () {
                Uri url = Uri.parse("https://www.behance.net/muhammadsinan9");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: lightTextColor),
                  ),
                ),
                child: nunitoText(
                  text: "Behance", height: 1.3,
                  weight: FontWeight.w600,
                  //color: lightTextColor,
                  size: 14,
                ),
              ),
            ),
            nunitoText(
              text: "/",
              color: lightTextColor.withOpacity(0.3),
            ),
            //gitHub textbutton
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: height8)),
              onPressed: () {
                Uri url = Uri.parse("https://github.com/muhammedsinanko");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: lightTextColor),
                  ),
                ),
                child: nunitoText(
                  text: "Git Hub", height: 1.3,
                  weight: FontWeight.w600,
                  //color: lightTextColor,
                  size: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
