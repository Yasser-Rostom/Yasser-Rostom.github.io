import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/sections/servcies/widgets/service_card.dart';
import 'package:portfolio/app/utils/service_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';
import 'package:portfolio/app/widgets/action_button.dart';
import 'package:portfolio/app/widgets/section_container.dart';

class ServiceContentMobile extends StatelessWidget {
  const ServiceContentMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return SectionContainer(title: "Skills & Services",
        subTitle: "Whether you want a mobile or web app developed or designed, feel free to reach out",
        mainChild: Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: 30.w,
          spacing: 10,
          children: serviceUtils
              .asMap()
              .entries
              .map(
                  (e) => ServiceCard(service: e.value)
          )
              .toList(),
        ),
        bottomChild: ActionGradientButton(
          onTap: () {
            openURL(upworkProfile);

          },
          buttonLabel:   'Browse Services',
        ));
}
}