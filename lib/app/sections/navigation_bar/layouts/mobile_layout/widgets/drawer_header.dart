import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: CupertinoColors.black,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Craft Your Next Project',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'With Me',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
