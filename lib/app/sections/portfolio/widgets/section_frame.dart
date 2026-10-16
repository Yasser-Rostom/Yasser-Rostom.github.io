import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class SectionFrame extends StatelessWidget {
  const SectionFrame({
    super.key,
    required this.mobile,
    required this.eyebrow,
    required this.title,
    required this.child,
    this.backgroundColor,
  });

  final bool mobile;
  final String eyebrow;
  final String title;
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 24 : 76,
        vertical: mobile ? 55 : 82,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1240),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eyebrow,
                style: const TextStyle(
                  color: PortfolioPalette.accent,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: mobile ? 34 : 48,
                  height: 1.05,
                  letterSpacing: -1.8,
                  fontWeight: FontWeight.w700,
                  color: PortfolioPalette.ink,
                ),
              ),
              const SizedBox(height: 28),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
