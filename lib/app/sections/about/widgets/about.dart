import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/fonts.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';
import 'package:portfolio/core/widgets/action_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            10.verticalSpace,
            Text(
              'Welcome to my Portfolio..',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: descriptionSize,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Text('I\'m Yasser Rostom', style: AppStyle.text50PxMediumWhite),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Mobile App Dev',
              style: AppStyle.text24PxMediumWhite,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'A well-versed mobile developer with years\' experience in the tech industry. Love working on exciting and\nchallenging apps. I enjoy working solo, but I reach the moon when working on a team.',
              style: TextStyle(
                  fontSize: descriptionSize, height: 1.7, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            ActionGradientButton(
              buttonLabel: "DOWNLOAD CV",
              onTap: () => {openURL(cv)},
            )
          ],
        ),
      );
    });
  }
}
