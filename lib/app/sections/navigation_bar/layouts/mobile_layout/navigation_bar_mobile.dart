import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/nav_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black,
      height: 80,
      child:  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu,color: Colors.white,),
            onPressed: () {Scaffold.of(context).openDrawer();},
          ),
          const SizedBox(width: 20,),
          const NavBarLogo()
        ],
      ),
    );
  }
}