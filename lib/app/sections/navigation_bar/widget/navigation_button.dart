import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/animations/entering_fading_effect.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/services/scrolling_provider.dart';
import 'package:portfolio/locator.dart';

class NavBarActionButton extends StatefulWidget {
  final String title;
  final int navigationIndex;
  final double padding;
  const NavBarActionButton({
    super.key,
    required this.title,
     this.padding =  5,
    required this.navigationIndex,
  });

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  late ScrollProvider scrollProvider;

  @override
  Widget build(BuildContext context) {
    // theme
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: widget.padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        onTap: () {
          scrollProvider.jumpTo(widget.navigationIndex);
          Scaffold.of(context).closeDrawer();
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.005, vertical: 10),
          child: Text(
            widget.title,
            style:  TextStyle(fontWeight: FontWeight.bold, fontSize:20, color: isHover ? Colors.blue :  Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    scrollProvider = locator<ScrollProvider>();
  }
}