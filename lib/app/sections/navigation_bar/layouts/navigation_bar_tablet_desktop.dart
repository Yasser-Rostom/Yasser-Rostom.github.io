import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/nav_logo.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/navigation_button.dart';
import 'package:portfolio/core/routing/routes.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: CupertinoColors.black,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.2,right: MediaQuery.of(context).size.width *0.2),
      height: 60,
      child: const Row(
        children: [
          NavBarLogo(),
           Spacer(),
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarActionButton(title: "Home", navigationIndex: HomeIndex),
              SizedBox(width: 10,),
              NavBarActionButton(title: "Services", navigationIndex: ServiceIndex),
              SizedBox(width: 10,),
              NavBarActionButton(title: "Projects", navigationIndex: ProjectIndex),
              SizedBox(width: 10,),
              NavBarActionButton(title: "Contact",navigationIndex: ContactIndex,)
            ],
          )
        ],
      ),
    );
  }
}


