import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';

class ActionGradientButton extends StatelessWidget {
  const ActionGradientButton({super.key, required this.buttonLabel, required this.onTap});
  final String buttonLabel;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:bluePurpleRed,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(2), // Space for the gradient border
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white, // Inside color of the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          side: const BorderSide(color: Colors.transparent),
        ),
        onPressed: () {onTap();},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          child: Text(buttonLabel,style: const TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );}}
