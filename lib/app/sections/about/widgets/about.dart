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
          'Mobile App Dev & Designer',
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
            'Versatile Mobile Engineer with years of experience building high-impact apps using Flutter, Kotlin, and modern frameworks. Passionate about delivering clean, scalable solutions that blend great UX with solid engineering. Equally effective working independently or driving results '
                'as part of a collaborative team. '
                'Always motivated by challenging projects that push boundaries and create meaningful user experiences.',
            style: TextStyle(
            fontSize: descriptionSize, height: 1.7, color: Colors.white),
      ),
      const SizedBox(
      height: 20,
      ),
      sizingInformation.deviceScreenType == DeviceScreenType.mobile? Center(
      child: ActionGradientButton(
      buttonLabel: "View Yasser's CV",
      onTap: () => {openURL(cv)},
      ),
      ):ActionGradientButton(
      buttonLabel: "View Yasser's CV",
      onTap: () => {openURL(cv)},
      )
      ,
      ]
      ,
      );
    });
  }
}
