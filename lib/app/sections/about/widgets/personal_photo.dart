import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/gradient_border_container.dart';

class PersonalPhoto extends StatelessWidget {
  const PersonalPhoto({super.key, required this.size,});
final double size;
  @override
  Widget build(BuildContext context) {
    return GradientBorderContainer(
      width: size,
      shape: BoxShape.circle,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: Image.asset("assets/personal_photo.png", ),
      ),
    );
  }
}
