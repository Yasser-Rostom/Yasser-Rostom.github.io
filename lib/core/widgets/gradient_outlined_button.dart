import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedGradientButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;

  const OutlinedGradientButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: gradient,borderRadius: BorderRadius.circular(22),
      ),
      child: OutlinedButton(
        onPressed: ()=>{onPressed},
        style: style,
        child: child,
      ),
    );
  }
}