import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/sections/navigation_bar/widget/navigation_button.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final int navigationIndex;

  const DrawerItem(this.title, this.icon, {super.key, required this.navigationIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
      child: Row(
        children: <Widget>[
          Icon(icon,color: CupertinoColors.white,),
          const SizedBox(width: 30),
          NavBarActionButton(title: title,navigationIndex: navigationIndex,),
        ],
      ),
    );
  }
}