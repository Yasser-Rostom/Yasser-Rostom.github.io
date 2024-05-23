import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/animations/entering_fading_effect.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/services/scrolling_provider.dart';
import 'package:portfolio/locator.dart';

class NavBarActionButton extends StatefulWidget {
  final String title;
  final int navigationIndex;
  const NavBarActionButton({
    super.key,
    required this.title,
    required this.navigationIndex,
  });

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = locator<ScrollProvider>();
    // theme
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {
          scrollProvider.jumpTo(widget.navigationIndex);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            widget.title,
            style:  TextStyle(fontSize:18, color: isHover ? Colors.blue :  Colors.white),
          ),
        ),
      ),
    );
  }
}