import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class SkillsStrip extends StatelessWidget {
  const SkillsStrip({super.key, required this.mobile});

  final bool mobile;

  static const _skills = [
    'FLUTTER',
    'iOS & ANDROID',
    'KOTLIN',
    'MOBILE BACKENDS & APIs',
    'PRODUCT DESIGN',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 24 : 76,
        vertical: 25,
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE1E2DC))),
      ),
      child: Wrap(
        spacing: 25,
        runSpacing: 12,
        alignment: mobile ? WrapAlignment.start : WrapAlignment.spaceBetween,
        children: _skills
            .map(
              (skill) => Text(
                skill,
                style: const TextStyle(
                  color: PortfolioPalette.muted,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
