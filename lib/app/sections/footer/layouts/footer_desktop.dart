import 'package:flutter/material.dart';
import 'package:portfolio/app/utils/contact_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/app/widgets/gradient_border_container.dart';
import 'package:portfolio/app/widgets/section_container.dart';
import 'package:portfolio/core/links/links.dart';


class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.black,

        borderRadius: BorderRadius.only(topLeft:  Radius.circular(20),topRight:  Radius.circular(20),),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Designed & Developed by ", style: TextStyle( color: Colors.white),),
            InkWell(
              onTap: () => openURL(gitHub),
              child: const Text(
                " Yasser Rostom | Flutter | ",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            const Text("© 2025", style: TextStyle( color: Colors.white),),
          ],
        ),
      ),
    );  }
}
