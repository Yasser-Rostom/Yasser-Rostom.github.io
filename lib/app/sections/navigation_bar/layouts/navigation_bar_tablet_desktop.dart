import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/nav_logo.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/navigation_button.dart';
import 'package:portfolio/core/routing/routes.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width<510? MediaQuery.of(context).size.width * 0.01:MediaQuery.of(context).size.width * 0.03),
      color: CupertinoColors.black,
width: double.infinity,
      height: 60,
      child:  const Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavBarLogo(),
           Spacer(),
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarActionButton(title: "Home", navigationIndex: HomeIndex),
              NavBarActionButton(title: "Services", navigationIndex: ServiceIndex),
              NavBarActionButton(title: "Projects", navigationIndex: ProjectIndex),
              NavBarActionButton(title: "Contact",navigationIndex: ContactIndex,)
            ],
          )
        ],
      ),
    );
  }
}


