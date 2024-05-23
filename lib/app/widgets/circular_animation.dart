
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlowingAnimation extends StatefulWidget {
  Widget widget;
  double width;
  double height;

   GlowingAnimation({super.key, required this.widget, required this.width, required this.height});

  @override
  State<GlowingAnimation> createState() => _GlowingAnimationState();
}

class _GlowingAnimationState extends State<GlowingAnimation> with TickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.center,
      children: [
        FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width:widget.width,
              height: widget.height,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green.shade300),
            ),
          ),
        ),
       widget.widget,
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    animationController();

  }

  void animationController(){
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..reset();
   _scaleAnimation = Tween<double>(begin: 0.6, end: 1.2).animate(_controller);
    _fadeAnimation = Tween<double>(begin: 1, end: 0.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
