import 'package:flutter/material.dart';
import 'package:portfolio/desktop_body.dart/screens/desktop_body.dart';

import '../mobile_body/screens/mobile_body.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) =>
      LayoutBuilder(builder: ((context, constraints) {
        int maxWidthforTablet = 991;
        if (constraints.maxWidth < maxWidthforTablet) {
          return MobileBody();
        } else {
          return DesktopBody();
        }
      }));
}
