import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/about/widgets/about.dart';
import 'package:portfolio/app/sections/about/widgets/personal_photo.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Expanded(child: About()),
        PersonalPhoto(size: (MediaQuery.of(context).size.width + MediaQuery.of(context).size.height)*0.07 ,)

      ],
    );
  }
}