import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layouts/mobile_layout/navigation_bar_mobile.dart';
import 'layouts/navigation_bar_tablet_desktop.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile:  (BuildContext context) => const NavigationBarMobile(),
      tablet: (BuildContext context) => const NavigationBarTabletDesktop(),
    );
  }
}