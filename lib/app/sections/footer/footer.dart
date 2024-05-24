import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/footer/layouts/footer_desktop.dart';
import 'package:portfolio/app/sections/footer/layouts/footer_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const FooterMobile(),
      desktop: (BuildContext context) => const FooterDesktop(),
    );
  }
}