import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/portfolio/widgets/section_frame.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({
    super.key,
    required this.mobile,
    required this.sectionKey,
  });

  final bool mobile;
  final Key sectionKey;

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  late final Future<QuerySnapshot<Map<String, dynamic>>> _projects;

  @override
  void initState() {
    super.initState();
    _projects = FirebaseFirestore.instance
        .collection('projects')
        .orderBy('createdAt', descending: true)
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return SectionFrame(
      key: widget.sectionKey,
      mobile: widget.mobile,
      backgroundColor: PortfolioPalette.alternate,
      eyebrow: 'THINGS I’VE WORKED ON',
      title: 'A little about the\nwork behind the apps.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Here are some projects I’ve been part of. I’m proud of the details as well as the finished product.',
            style: TextStyle(
              color: PortfolioPalette.muted,
              height: 1.6,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 28),
          FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
            future: _projects,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text(
                  'Projects are temporarily unavailable. Explore more on GitHub.',
                  style: TextStyle(color: PortfolioPalette.muted),
                );
              }
              if (!snapshot.hasData) {
                return const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: PortfolioPalette.ink,
                    ),
                  ),
                );
              }

              final projects = [...snapshot.data!.docs];
              final grabblIndex = projects.indexWhere(
                (project) => _isGrabbl(project.data()),
              );
              if (grabblIndex > 0) {
                projects.insert(0, projects.removeAt(grabblIndex));
              }
              if (projects.isEmpty) {
                return const Text(
                  'Explore my engineering work on GitHub.',
                  style: TextStyle(color: PortfolioPalette.muted),
                );
              }

              return Column(
                children: projects.indexed
                    .map((entry) => _ProjectCard(
                          project: entry.$2.data(),
                          number: entry.$1 + 1,
                          mobile: widget.mobile,
                        ))
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () => openURL(gitHub),
            icon: const Icon(Icons.arrow_outward, size: 16),
            label: const Text('Explore GitHub'),
            style: OutlinedButton.styleFrom(
              foregroundColor: PortfolioPalette.ink,
              side: const BorderSide(color: PortfolioPalette.ink),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
            ),
          ),
        ],
      ),
    );
  }

  bool _isGrabbl(Map<String, dynamic> data) =>
      (data['title'] as String? ?? '').toLowerCase() == 'grabbl';
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({
    required this.project,
    required this.number,
    required this.mobile,
  });

  final Map<String, dynamic> project;
  final int number;
  final bool mobile;

  bool get _isGrabbl =>
      (project['title'] as String? ?? '').toLowerCase() == 'grabbl';

  String get _title => _isGrabbl
      ? 'Grabbl — White-label Marketplace'
      : project['title'] as String? ?? 'Product project';

  String get _description => _isGrabbl
      ? 'Currently leading full-stack development of a white-label marketplace for a liquor-focused company. Building Flutter customer and merchant apps, NestJS services, PostgreSQL data systems, real-time features, and payment and delivery integrations.'
      : project['projectDesc'] as String? ?? '';

  String get _stack => _isGrabbl
      ? 'Flutter · NestJS · TypeScript · PostgreSQL · Redis · WebSockets · Firebase'
      : project['stack'] as String? ?? '';

  String get _url => project['projectUrl'] as String? ?? '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 11),
      padding: EdgeInsets.all(mobile ? 18 : 23),
      decoration: BoxDecoration(
        color: PortfolioPalette.paper,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number.toString().padLeft(2, '0'),
            style: const TextStyle(color: Color(0xFF799B54), fontSize: 12),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: PortfolioPalette.ink,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _description,
                  style: const TextStyle(
                    color: PortfolioPalette.muted,
                    height: 1.55,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  _stack,
                  style: const TextStyle(
                    fontSize: 10,
                    letterSpacing: .6,
                    fontWeight: FontWeight.w700,
                    color: PortfolioPalette.ink,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _url.isEmpty ? null : () => openURL(_url),
            icon: const Icon(
              Icons.north_east,
              size: 18,
              color: PortfolioPalette.muted,
            ),
          ),
        ],
      ),
    );
  }
}
