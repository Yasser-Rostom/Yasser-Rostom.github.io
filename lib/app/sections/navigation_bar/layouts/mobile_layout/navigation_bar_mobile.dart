import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/nav_logo.dart';
import 'package:portfolio/core/services/navigation.dart';
import 'package:portfolio/locator.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black,
      height: 80,
      child:  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {Scaffold.of(context).openDrawer();},
          ),
          const NavBarLogo()
        ],
      ),
    );
  }
}