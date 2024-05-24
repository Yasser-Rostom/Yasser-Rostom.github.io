import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/utils/contact_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/app/widgets/gradient_border_container.dart';
import 'package:portfolio/app/widgets/section_container.dart';
import 'package:portfolio/core/links/links.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      decoration: const BoxDecoration(
        color: Colors.black,

        borderRadius: BorderRadius.only(topLeft:  Radius.circular(20),topRight:  Radius.circular(20),),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Designed & Developed by", style: TextStyle( color: Colors.white),),
                InkWell(
                  onTap: () => openURL(gitHub),
                  child: const Text(
                    " Yasser Rostom",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),

              ],
            ),const Text("Flutter | © 2024", style: TextStyle( color: Colors.white),),
          ],
        ),
      ),
    );  }

}
