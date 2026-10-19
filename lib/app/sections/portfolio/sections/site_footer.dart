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
      child: mobile
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FooterName(),
                SizedBox(height: 8),
                _FooterAvailability(),
              ],
            )
          : const Row(
              children: [
                _FooterName(),
                Spacer(),
                _FooterAvailability(),
              ],
            ),
    );
  }
}

class _FooterName extends StatelessWidget {
  const _FooterName();

  @override
  Widget build(BuildContext context) => const Text(
        'YASSER ROSTOM',
        style: TextStyle(
          color: PortfolioPalette.ink,
          fontWeight: FontWeight.w700,
          letterSpacing: 1,
          fontSize: 11,
        ),
      );
}

class _FooterAvailability extends StatelessWidget {
  const _FooterAvailability();

  @override
  Widget build(BuildContext context) => const Text(
        'Dubai, UAE  ·  Open to opportunities',
        style: TextStyle(color: PortfolioPalette.muted, fontSize: 11),
      );
}
