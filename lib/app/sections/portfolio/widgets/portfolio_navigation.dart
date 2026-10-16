import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class PortfolioNavigation extends StatelessWidget {
  const PortfolioNavigation({
    super.key,
    required this.mobile,
    required this.onNavigate,
  });

  final bool mobile;
  final ValueChanged<int> onNavigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PortfolioPalette.paper,
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 22 : 72,
        vertical: 22,
      ),
      child: Row(
        children: [
          const Text(
            'YR.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              letterSpacing: -2,
              color: PortfolioPalette.ink,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            'YASSER ROSTOM',
            style: TextStyle(
              fontSize: 11,
              letterSpacing: 1.6,
              fontWeight: FontWeight.w700,
              color: PortfolioPalette.muted,
            ),
          ),
          const Spacer(),
          if (!mobile) ...[
            _NavigationLink(title: 'What I do', onPressed: () => onNavigate(1)),
            _NavigationLink(title: 'Work', onPressed: () => onNavigate(2)),
            _NavigationLink(title: 'About', onPressed: () => onNavigate(3)),
            const SizedBox(width: 20),
          ],
          OutlinedButton.icon(
            onPressed: () => onNavigate(4),
            icon: const Icon(Icons.arrow_outward, size: 15),
            label: const Text('Get in touch'),
            style: OutlinedButton.styleFrom(
              foregroundColor: PortfolioPalette.ink,
              side: const BorderSide(color: PortfolioPalette.ink),
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationLink extends StatelessWidget {
  const _NavigationLink({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: PortfolioPalette.ink, fontSize: 13),
        ),
      );
}
