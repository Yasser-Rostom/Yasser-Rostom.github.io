import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/animations/entering_fading_effect.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
      gradient: RadialGradient( radius:0.9,  center:Alignment.bottomCenter,colors: [Color(0xff374ABE),CupertinoColors.black,],

      ),
    ),
      child: ConstrainedBox(
        constraints:  BoxConstraints(maxWidth: MediaQuery.of(context).size.width<510? MediaQuery.of(context).size.width * 0.9:MediaQuery.of(context).size.width * 0.7),
        child: child,
      ),
    );
  }
}