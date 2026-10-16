import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class SiteFooter extends StatelessWidget {
  const SiteFooter({super.key, required this.mobile});

  final bool mobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 24 : 76,
        vertical: 22,
      ),
      child: const Row(
        children: [
          Text(
            'YASSER ROSTOM',
            style: TextStyle(
              color: PortfolioPalette.ink,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              fontSize: 11,
            ),
          ),
          Spacer(),
          Text(
            'Dubai, UAE  ·  Open to opportunities',
            style: TextStyle(color: PortfolioPalette.muted, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
