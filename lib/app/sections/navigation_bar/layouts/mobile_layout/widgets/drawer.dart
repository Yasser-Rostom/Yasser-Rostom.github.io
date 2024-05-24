import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/nav_logo.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/navigation_button.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/routing/routes.dart';


class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     color: Colors.black,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const NavBarLogo(),
                const Spacer(),
                IconButton(onPressed: ()=>{
                Scaffold.of(context).closeDrawer()

                }, icon: const Icon(Icons.close,color: Colors.white,size: 30,))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 2,
            decoration: const BoxDecoration(
                gradient: bluePurpleWhite,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          const SizedBox(height: 20,),
          const NavBarActionButton(title: 'Home', navigationIndex: HomeIndex,padding: 20,),
          const NavBarActionButton(title: 'Services', navigationIndex: ServiceIndex,padding: 20,),
          const NavBarActionButton(title: 'Projects', navigationIndex: ProjectIndex,padding: 20,),
          const NavBarActionButton(title: 'Contact',navigationIndex: ContactIndex,padding: 20,),
          const Spacer(),
          Container(alignment: Alignment.center, margin: const EdgeInsets.only(bottom: 10),child: const Text("Yasser Rostom | All Rights Reserved 2024",style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}