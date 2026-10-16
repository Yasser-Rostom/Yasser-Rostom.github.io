import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/portfolio/widgets/section_frame.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
    required this.mobile,
    required this.sectionKey,
  });

  final bool mobile;
  final Key sectionKey;

  @override
  Widget build(BuildContext context) {
    return SectionFrame(
      key: sectionKey,
      mobile: mobile,
      eyebrow: 'A LITTLE ABOUT ME',
      title: 'Curious by nature.\nBuilder by habit.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _personalIntroduction(),
          const SizedBox(height: 42),
          const Text(
            'EXPERIENCE',
            style: TextStyle(
              color: PortfolioPalette.accent,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 16),
          ..._roles.map((role) => _ExperienceCard(role: role)),
          const SizedBox(height: 20),
          _workingStyleNote(),
        ],
      ),
    );
  }

  Widget _workingStyleNote() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: PortfolioPalette.alternate,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.auto_awesome_outlined,
            color: PortfolioPalette.accent,
            size: 20,
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AI-assisted development',
                  style: TextStyle(
                    color: PortfolioPalette.ink,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'I use AI tools to speed up research, scaffolding, and exploring implementation options. I review and validate the output, and stay responsible for the architecture, behavior, and production quality.',
                  style: TextStyle(
                    color: PortfolioPalette.muted,
                    fontSize: 13,
                    height: 1.55,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _personalIntroduction() {
    const text = Text(
      'I’m Yasser, a software engineer based in Dubai. I like solving practical problems, sweating the small details in an interface, and seeing an idea become a product people can use.\n\nMy work spans mobile apps and the backend systems behind them. I enjoy owning a problem end to end, learning from the people I work with, and making software that holds up in production.',
      style: TextStyle(
        fontSize: 16,
        height: 1.75,
        color: PortfolioPalette.muted,
      ),
    );

    if (mobile) return text;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: text),
        const SizedBox(width: 48),
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            'assets/personal_photo.png',
            width: 190,
            height: 220,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}

class _Experience {
  const _Experience({
    required this.role,
    required this.company,
    required this.period,
    required this.summary,
    required this.skills,
  });

  final String role;
  final String company;
  final String period;
  final String summary;
  final String skills;
}

const _roles = [
  _Experience(
    role: 'Senior Software Engineer · Mobile & Backend',
    company: 'Zyka LLC (Grabbl) · Remote, USA',
    period: 'Sep 2024 – Present',
    summary:
        'Leading full-stack development of a white-label marketplace. Building Flutter customer and merchant apps, NestJS services and REST APIs, PostgreSQL data systems, real-time features, payment and delivery integrations, and production releases.',
    skills:
        'Flutter · Dart · NestJS · TypeScript · PostgreSQL · Redis · WebSockets · Firebase',
  ),
  _Experience(
    role: 'Mobile Engineer · Contract',
    company: 'Intalio · Dubai, UAE',
    period: 'Jun 2024 – Sep 2024',
    summary:
        'Developed an enterprise Flutter correspondence app deployed across 50+ UAE government entities, including UAE PASS authentication, REST API integrations, PDF editing, translation, and voice messaging.',
    skills: 'Flutter · BLoC · Provider · REST APIs · CI/CD',
  ),
  _Experience(
    role: 'Flutter Developer & UI Designer',
    company: 'SpicyFi GmbH · Remote, Switzerland',
    period: 'Apr 2023 – Jun 2024',
    summary:
        'Contributed to iOS and Android cryptocurrency apps, improved performance and stability through refactoring, and built WalletConnect integrations and reward systems.',
    skills: 'Flutter · Dart · Figma · WalletConnect',
  ),
  _Experience(
    role: 'Mobile Developer · Freelance',
    company: 'Remote',
    period: 'Jan 2021 – Present',
    summary:
        'Delivered 10+ production mobile apps and MVPs for international clients using Flutter and native Android, working directly with stakeholders from concept through release.',
    skills: 'Flutter · Android · Kotlin · Integrations · Testing',
  ),
];

class _ExperienceCard extends StatelessWidget {
  const _ExperienceCard({required this.role});

  final _Experience role;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: PortfolioPalette.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 12,
            runSpacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                role.role,
                style: const TextStyle(
                  color: PortfolioPalette.ink,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Text(
                role.period,
                style: const TextStyle(
                  color: PortfolioPalette.muted,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            role.company,
            style: const TextStyle(
              color: PortfolioPalette.accent,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            role.summary,
            style: const TextStyle(
              color: PortfolioPalette.muted,
              height: 1.55,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 11),
          Text(
            role.skills,
            style: const TextStyle(
              color: PortfolioPalette.ink,
              fontSize: 10,
              letterSpacing: .3,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
