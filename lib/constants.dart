import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color lightTextColor = const Color(0xffD5D5D5);
Color backroundColor = const Color(0xff1F2630);
Color blueColor = const Color(0xff0085FF);
Color primaryColor = const Color(0xff9FB896);
double height8 = 8;
double height16 = 16;
double height24 = 24;
double height40 = 40;
double height32 = 32;
double height48 = 48;
double height56 = 56;
double height64 = 64;
double height72 = 72;
double height80 = 80;
double? skillsConstraints;
Widget quickSandText(
    {required String text,
    Color? color = Colors.white,
    double? size,
    FontWeight? weight,
    double? height,
    double? letterSpacing,
    TextAlign? align,
    double? maxLines}) {
  return Text(
    text,
    textAlign: align ?? TextAlign.center,
    textHeightBehavior:
        const TextHeightBehavior(applyHeightToFirstAscent: true),
    style: GoogleFonts.montserrat(
        color: color,
        fontSize: size,
        fontWeight: weight,
        height: height,
        letterSpacing: letterSpacing),
  );
}

Widget nunitoText({
  required String text,
  Color? color = Colors.white,
  double? size,
  FontWeight? weight,
  double? height,
  double? letterSpacing,
  TextAlign? align,
  double? maxLines,
  TextBaseline? textBaseline,
  TextOverflow? overflow,
}) {
  return Text(
    text,
    overflow: overflow,
    textAlign: align ?? TextAlign.center,
    textHeightBehavior:
        const TextHeightBehavior(applyHeightToFirstAscent: true),
    style: GoogleFonts.poppins(
      color: color,
      fontSize: size,
      fontWeight: weight,
      height: height,
      letterSpacing: letterSpacing,
      textBaseline: textBaseline,
    ),
  );
}
