import 'package:flutter/material.dart';
import 'package:portfolio/app/utils/contact_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/app/widgets/gradient_border_container.dart';
import 'package:portfolio/app/widgets/section_container.dart';


class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBorderContainer(
      bgColor: Colors.black,
      width: 150,
      shape: BoxShape.rectangle,
      child:  SectionContainer(title: "Get in Touch",
        subTitle: "Let's jumpstart your project with a fresh and exciting beginning, setting the stage for success.",
        mainChild: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 50,
            children: contactUtils
                .asMap()
                .entries
                .map((e) => IconButton(
              icon: Image.network(
                e.value.icon,
                color: Colors.white,
              ),
              onPressed: () => openURL(e.value.url),
              highlightColor: Colors.white54,
            ))
                .toList()),



      ),
    );
  }
}
