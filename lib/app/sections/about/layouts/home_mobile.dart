import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/about/widgets/about.dart';
import 'package:portfolio/app/sections/about/widgets/personal_photo.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const About(),
          const  SizedBox(height: 50,),
          PersonalPhoto(size: (MediaQuery.of(context).size.width + MediaQuery.of(context).size.height)*0.2 ,)
        ],
      ),
    );
  }
}