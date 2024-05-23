import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/routing/routes.dart';

import 'drawer_header.dart';
import 'drawer_item.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        gradient: RadialGradient( radius:0.9,  center:Alignment.bottomCenter,colors: [Color(0xff374ABE),CupertinoColors.black,],

        ),
      ),
      child: const Column(
        children: <Widget>[
          NavDrawerHeader(),
          DrawerItem('Home', Icons.home,navigationIndex: HomeIndex,),
          DrawerItem('Projects', Icons.work,navigationIndex: ProjectIndex,),
          DrawerItem('Contact', Icons.help, navigationIndex: ContactIndex,),
        ],
      ),
    );
  }
}