import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';

class GradientBorderContainer extends StatelessWidget {
  final Widget child;
  final double borderWidth;
  final double width;
  final BorderRadius borderRadius;
  final BoxShape shape;
 final  Color bgColor;
  const GradientBorderContainer({
    super.key,
    required this.child,
    this.borderWidth = 4.0,
    this.bgColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(22)),
    required this.width,
    required this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          gradient: bluePurpleRed,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withAlpha(60),
              blurRadius:10.0,
              spreadRadius: 2,
              offset: const Offset(
                1.0,
                -1.0,
              ),
            ),
          ],
          borderRadius: BoxShape.circle != shape ? borderRadius : null,
          shape: shape),
      child: Container(
        margin: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BoxShape.circle != shape ? borderRadius : null,
          shape: shape,
        ),
        child: child,
      ),
    );
  }
}
