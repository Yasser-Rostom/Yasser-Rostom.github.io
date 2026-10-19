import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    super.key,
    required this.mobile,
    required this.onContact,
  });

  final bool mobile;
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    final viewportWidth = MediaQuery.sizeOf(context).width;
    final showPortrait = !mobile && viewportWidth >= 1000;

    return Container(
      color: PortfolioPalette.paper,
      padding: EdgeInsets.fromLTRB(
        mobile ? 24 : 76,
        mobile ? 66 : 104,
        mobile ? 24 : 76,
        mobile ? 68 : 106,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1240),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: _introCopy(context)),
            if (showPortrait) ...[
              const SizedBox(width: 56),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/personal_photo.png',
                  width: 260,
                  height: 260,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _introCopy(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final titleSize = !mobile
        ? (screenWidth < 1000 ? 60.0 : 82.0)
        : screenWidth < 360
            ? 40.0
            : screenWidth < 400
                ? 44.0
                : 48.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: PortfolioPalette.green,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'HELLO, I’M YASSER · DUBAI',
              style: TextStyle(
                color: PortfolioPalette.accent,
                letterSpacing: 1,
                fontSize: mobile ? 10 : 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: mobile ? 28 : 36),
        Text(
          'I build apps\npeople enjoy using.',
          style: TextStyle(
            color: PortfolioPalette.ink,
            height: .98,
            fontSize: titleSize,
            letterSpacing: mobile && screenWidth < 360 ? -2.5 : -4,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 26),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 690),
          child: Text(
            'I’m a Senior Software Engineer focused on mobile and backend. At Zyka LLC (Grabbl), I lead full-stack development of a white-label marketplace, from Flutter customer and merchant apps to NestJS services and PostgreSQL.',
            style: TextStyle(
              color: PortfolioPalette.muted,
              height: 1.7,
              fontSize: mobile ? 16 : 19,
            ),
          ),
        ),
        const SizedBox(height: 34),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              onPressed: () => openURL(cv),
              icon: const Icon(Icons.description_outlined, size: 17),
              label: const Text('View my résumé'),
              style: FilledButton.styleFrom(
                backgroundColor: PortfolioPalette.ink,
                foregroundColor: PortfolioPalette.paper,
                padding: const EdgeInsets.symmetric(
                  horizontal: 21,
                  vertical: 19,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: onContact,
              icon: const Icon(Icons.waving_hand_outlined, size: 17),
              label: const Text('Say hello'),
              style: TextButton.styleFrom(
                foregroundColor: PortfolioPalette.ink,
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 19,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Flutter  ·  Android  ·  Kotlin  ·  App backends',
          style: TextStyle(
            color: PortfolioPalette.muted,
            fontSize: 12,
            letterSpacing: .2,
          ),
        ),
      ],
    );
  }
}
