// ignore_for_file: deprecated_member_use

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import '../../constants.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool isLinkedInHover = false;

  bool isBehanceHover = false;

  bool isGitHubHover = false;
  String number = "+919745725504";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height72,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: nunitoText(
            text: "Contact",
            size: 42,
            weight: FontWeight.w700,
            height: 1,
          ),
        ),
        SizedBox(
          height: height32,
        ),

        //*social & growth-----
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nunitoText(
              text: "Social & growth  :",
              size: 25,
            ),

            //*linkedIn textbutton-----
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
              ),
              onHover: (value) {
                setState(() {
                  isLinkedInHover = value;
                });
              },
              onPressed: () {
                Uri url = Uri.parse(
                    "https://www.linkedin.com/in/muhammed-sinan-684aa726a");
                launchUrl(
                  url,
                  mode: LaunchMode.inAppWebView,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    border: isLinkedInHover
                        ? Border(
                            bottom: BorderSide(
                                color: Colors.white.withOpacity(0.8),
                                width: 1.2),
                          )
                        : null),
                child: nunitoText(
                    text: "Linked In",
                    weight: FontWeight.w600,
                    size: 25,
                    height: 1.3),
              ),
            ),
            nunitoText(text: "/", color: lightTextColor.withOpacity(0.3)),

            //*Behance textbutton-----
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
              ),
              onHover: (value) {
                setState(() {
                  isBehanceHover = value;
                });
              },
              onPressed: () {
                Uri url = Uri.parse("https://www.behance.net/muhammadsinan9");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: isBehanceHover
                        ? Border(
                            bottom: BorderSide(
                                color: Colors.white.withOpacity(0.8),
                                width: 1.2),
                          )
                        : null),
                child: nunitoText(
                    text: "Behance",
                    weight: FontWeight.w600,
                    size: 25,
                    height: 1.3),
              ),
            ),
            nunitoText(text: "/", color: lightTextColor.withOpacity(0.3)),

            //*gitHub textbutton-----
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.transparent,
              ),
              onHover: (value) {
                setState(() {
                  isGitHubHover = value;
                });
              },
              onPressed: () {
                Uri url = Uri.parse("https://github.com/muhammedsinanko");
                launchUrl(url, mode: LaunchMode.inAppWebView);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: isGitHubHover
                        ? Border(
                            bottom: BorderSide(
                                color: Colors.white.withOpacity(0.8),
                                width: 1.2),
                          )
                        : null),
                child: nunitoText(
                    text: "Git Hub",
                    weight: FontWeight.w600,
                    size: 25,
                    height: 1.3),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height40,
        ),

        //mobile
        Container(
          alignment: Alignment.center,
          //padding: const EdgeInsets.symmetric(
          //  horizontal: 8,
          //  vertical: 10,
          //),
          //alignment: Alignment.center,
          //height: 30 + 10,
          //color: Colors.amberAccent,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "asset/icons8-gmail.svg",
                    height: height24,
                  ),
                  SizedBox(
                    width: height8,
                  ),
                  nunitoText(
                    text: "Gmail  : ",
                    color: Colors.white,
                    size: 18,
                  ),
                  SelectableText(
                    "muhammedsinanko08@gmail.com",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "asset/ic--round-phone.svg",
                    color: Colors.green,
                    height: height24,
                  ),
                  SizedBox(
                    width: height8,
                  ),
                  SelectableText(
                    "Phone  : +919745725504",
                    style:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.white),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      shadowColor: Colors.green,
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 16,
                        top: 18,
                        bottom: 18,
                      ),
                      backgroundColor: Colors.green,
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius(
                          cornerRadius: 10,
                          cornerSmoothing: 1,
                        ),
                      ),
                    ),
                    onPressed: lauchWhatsApp,
                    icon: SvgPicture.asset(
                      "asset/icons8-whatsapp.svg",
                      height: height24,
                    ),
                    label: nunitoText(
                      text: "Let's get in touch",
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: height32,
        ),
      ],
    );
  }

  lauchWhatsApp() async {
    const link = WhatsAppUnilink(
      phoneNumber: '+919745725504',
      //text: 'Hello.',
    );
    await launchUrl(Uri.parse("$link"));
  }
}
