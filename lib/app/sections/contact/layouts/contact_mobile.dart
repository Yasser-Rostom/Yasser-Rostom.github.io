import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/utils/contact_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/app/widgets/gradient_border_container.dart';
import 'package:portfolio/app/widgets/section_container.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBorderContainer(
      bgColor: Colors.black,
      width: 250,
      shape: BoxShape.rectangle,
      child:  Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05).copyWith(bottom: 10),
        child: SectionContainer(title: "Get in Touch",
          subTitle: "Let's jumpstart your project with a fresh and exciting beginning, setting the stage for success.",
          mainChild: Wrap(
              alignment: WrapAlignment.center,
              children: contactUtils
                  .asMap()
                  .entries
                  .map((e) => IconButton(
                icon: Image.network(scale: 2,
                  e.value.icon,
                  color: Colors.white,
                ),
                onPressed: () => openURL(e.value.url),
                highlightColor: Colors.white54,
              ))
                  .toList()),



        ),
      ),
    );
  }

}
