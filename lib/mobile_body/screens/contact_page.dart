// ignore_for_file: deprecated_member_use

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: height48,
        ),

        quickSandText(
          text: "Contact",
          size: 26,
          weight: FontWeight.w700,
          height: 1,
        ),
        SizedBox(
          height: height24,
        ),

        //social & growth
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //linkedIn textbutton
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: height8)),
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
                  height: 1.2,
                  weight: FontWeight.w600,
                  size: 16,
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
                  text: "Behance",
                  height: 1.2,
                  weight: FontWeight.w600,
                  size: 16,
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
                  text: "Git Hub",
                  height: 1.2,
                  weight: FontWeight.w600,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height24,
        ),

        //*personal details-----
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "asset/icons8-gmail.svg",
                  height: 20,
                ),
                SizedBox(
                  width: height8,
                ),
                nunitoText(
                  text: "Gmail  :   ",
                  color: Colors.white,
                  size: 14,
                ),
                Flexible(
                  child: SelectableText(
                    "muhammedsinanko08@gmail.com",
                    scrollPhysics: const BouncingScrollPhysics(),
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "asset/ic--round-phone.svg",
                  color: Colors.green,
                  height: 21,
                ),
                SizedBox(
                  width: height8,
                ),
                nunitoText(
                  text: "Mobile  :",
                  color: Colors.white,
                  size: 14,
                ),
                SelectableText(
                  " +919745725504",
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: height16,
            ),
            //SvgPicture.asset(
            //  "asset/icons8-whatsapp.svg",
            //  height: height24,
            //),
            SizedBox(
              width: height8,
            ),

//*lauchWhatsappbutton
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.only(
                      left: 11,
                      right: 15,
                      top: 14,
                      bottom: 14,
                    ),
                    elevation: 4,
                    shadowColor: Colors.green,
                    backgroundColor: Colors.green,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                          cornerRadius: 10, cornerSmoothing: 1),
                    ),
                  ),
                  onPressed: () {
                    lauchWhatsApp(context);
                  },
                  icon: SvgPicture.asset(
                    "asset/icons8-whatsapp.svg",
                    height: 20,
                  ),
                  label: nunitoText(
                      text: "Let's get in touch",
                      size: 15,
                      weight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: height16,
        )
      ],
    );
  }

  lauchWhatsApp(context) async {
    try {
      showToast("Opening WhatsApp");
      const link = WhatsAppUnilink(
        phoneNumber: '+919745725504',
        //text: "",
      );
      await launchUrl(Uri.parse("$link"));
    } catch (e) {
      showToast(e.toString());
    }
  }

  showToast(String message) async {
    await Fluttertoast.showToast(
      msg: "Opening WhatsApp...",
      fontSize: 16,
    );
  }
}
