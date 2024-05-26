import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';
import 'package:portfolio/app/widgets/action_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 28
              : 50;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Column(
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
            height: 15,
          ),
          Text('I\'m Yasser Rostom', style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: titleSize,
              color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Mobile App Dev',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: descriptionSize,
                color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'A well-versed mobile developer with years\' experience in the tech industry. Love working on exciting and challenging apps. I enjoy working solo, but I reach the moon when working on a team.',
            style: TextStyle(
                fontSize: descriptionSize, height: 1.7, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          sizingInformation.deviceScreenType == DeviceScreenType.mobile?   Center(
            child: ActionGradientButton(
              buttonLabel: "DOWNLOAD CV",
              onTap: () => {openURL(cv)},
            ),
          ):ActionGradientButton(
            buttonLabel: "DOWNLOAD CV",
            onTap: () => {openURL(cv)},
          ),
        ],
      );
    });
  }
}
