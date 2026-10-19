import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/portfolio/widgets/section_frame.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class CapabilitiesSection extends StatelessWidget {
  const CapabilitiesSection({
    super.key,
    required this.mobile,
    required this.sectionKey,
  });

  final bool mobile;
  final Key sectionKey;

  @override
  Widget build(BuildContext context) {
    final viewportWidth = MediaQuery.sizeOf(context).width;
    const cards = [
      _CapabilityCard(
        number: '01',
        title: 'Mobile apps from idea to launch',
        description:
            'At Grabbl, I work across a white-label marketplace: Flutter apps for customers and merchants, NestJS services, PostgreSQL, and the integrations behind ordering, payments, and delivery.',
        skills: 'Flutter · NestJS · TypeScript · PostgreSQL',
      ),
      _CapabilityCard(
        number: '02',
        title: 'Improve an existing app',
        description:
            'I help teams improve mobile experiences, add features, and work through the engineering behind them—from app performance and reliability to backend connections.',
        skills: 'App improvements · Features · Reliability',
      ),
      _CapabilityCard(
        number: '03',
        title: 'Working with a team',
        description:
            'I can join an existing product team, take ownership of a piece of work, and collaborate with engineers, designers, and product leads to move it forward.',
        skills: 'Teamwork · Ownership · Delivery',
      ),
    ];

    return SectionFrame(
      key: sectionKey,
      mobile: mobile,
      eyebrow: 'WHAT I WORK ON',
      title: 'Mobile apps, from\ninterface to backend.',
      child: mobile
          ? Column(
              children: [
                for (var index = 0; index < cards.length; index++) ...[
                  if (index > 0) const SizedBox(height: 14),
                  cards[index],
                ],
              ],
            )
          : GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: viewportWidth < 1180 ? 2 : 3,
              childAspectRatio: viewportWidth < 1180 ? .95 : 1.05,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: cards,
            ),
    );
  }
}

class _CapabilityCard extends StatelessWidget {
  const _CapabilityCard({
    required this.number,
    required this.title,
    required this.description,
    required this.skills,
  });

  final String number;
  final String title;
  final String description;
  final String skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Color(0xFF799B54),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: PortfolioPalette.ink,
              letterSpacing: -.5,
            ),
          ),
          const SizedBox(height: 11),
          Text(
            description,
            style: const TextStyle(
              color: PortfolioPalette.muted,
              height: 1.55,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            skills,
            style: const TextStyle(
              color: PortfolioPalette.ink,
              fontSize: 10,
              letterSpacing: .5,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
