import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class EntranceFader extends StatefulWidget {
  /// Child to be animated on entrance
  final Widget child;

  /// Delay after which the animation will start
  final Duration delay;

  /// Duration of entrance animation
  final Duration duration;

  /// Starting point from which the widget will fade to its default position
  final Offset offset;

  const EntranceFader({
    super.key,
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 400),
    this.offset = const Offset(0.0, 32.0),
  });

  @override
  EntranceFaderState createState() {
    return EntranceFaderState();
  }
}

class EntranceFaderState extends State<EntranceFader>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _dxAnimation;
  Animation? _dyAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _dxAnimation =
        Tween(begin: widget.offset.dx, end: 0.0).animate(_controller!);
    _dyAnimation =
        Tween(begin: widget.offset.dy, end: 0.0).animate(_controller!);
    _scaleAnimation =
        Tween<double>(begin: 0.95, end: 1.0).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInToLinear,
    ));
    // Future.delayed(widget.delay, () {
    //   if (mounted) {
    //     _controller!.forward();
    //   }
    // });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
  if(visiblePercentage>10){
    _controller!.forward();
  }
      },
      key: UniqueKey(),
      child: AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) => Opacity(
          opacity: _controller!.value,
          child: Transform.translate(
            offset: Offset(_dxAnimation!.value, _dyAnimation!.value),
            child: Transform.scale(
              scale: _scaleAnimation.value,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
