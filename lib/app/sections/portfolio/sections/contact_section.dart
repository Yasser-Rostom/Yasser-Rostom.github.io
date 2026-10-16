import 'package:flutter/material.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
    required this.mobile,
    required this.sectionKey,
  });

  final bool mobile;
  final Key sectionKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      color: PortfolioPalette.ink,
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 24 : 76,
        vertical: 70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ROLES, COLLABORATIONS, GOOD CONVERSATIONS',
            style: TextStyle(
              color: PortfolioPalette.green,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'What are you\nworking on?',
            style: TextStyle(
              color: PortfolioPalette.paper,
              height: 1,
              fontSize: mobile ? 43 : 66,
              fontWeight: FontWeight.w700,
              letterSpacing: -2,
            ),
          ),
          const SizedBox(height: 19),
          const Text(
            'I’m open to hearing about full time roles, contract work, and interesting products. Drop me a note and tell me a little about what you have in mind.',
            style: TextStyle(
              color: Color(0xFFB8C0BB),
              fontSize: 15,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 27),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              FilledButton.icon(
                onPressed: () => openURL(whatsapp),
                icon: const Icon(Icons.chat_bubble_outline, size: 17),
                label: const Text('Message me on WhatsApp'),
                style: FilledButton.styleFrom(
                  backgroundColor: PortfolioPalette.green,
                  foregroundColor: PortfolioPalette.ink,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 18,
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () => openURL(linkedin),
                icon: const Icon(Icons.open_in_new, size: 15),
                label: const Text('Connect on LinkedIn'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: PortfolioPalette.paper,
                  side: const BorderSide(color: Color(0xFF5A645E)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
