import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/portfolio/sections/capabilities_section.dart';
import 'package:portfolio/app/sections/portfolio/sections/contact_section.dart';
import 'package:portfolio/app/sections/portfolio/sections/experience_section.dart';
import 'package:portfolio/app/sections/portfolio/sections/intro_section.dart';
import 'package:portfolio/app/sections/portfolio/sections/projects_section.dart';
import 'package:portfolio/app/sections/portfolio/sections/site_footer.dart';
import 'package:portfolio/app/sections/portfolio/sections/skills_strip.dart';
import 'package:portfolio/app/sections/portfolio/widgets/portfolio_navigation.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final _scrollController = ScrollController();
  final _sectionKeys = List.generate(5, (_) => GlobalKey());

  void _navigateTo(int index) {
    final targetContext = _sectionKeys[index].currentContext;
    if (targetContext == null) return;

    Scrollable.ensureVisible(
      targetContext,
      duration: const Duration(milliseconds: 650),
      curve: Curves.easeInOutCubic,
      alignment: .04,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PortfolioPalette.paper,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final mobile = constraints.maxWidth < 760;
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: PortfolioNavigation(
                  mobile: mobile,
                  onNavigate: _navigateTo,
                ),
              ),
              SliverToBoxAdapter(
                child: IntroSection(
                  mobile: mobile,
                  onContact: () => _navigateTo(4),
                ),
              ),
              SliverToBoxAdapter(child: SkillsStrip(mobile: mobile)),
              SliverToBoxAdapter(
                child: CapabilitiesSection(
                  mobile: mobile,
                  sectionKey: _sectionKeys[1],
                ),
              ),
              SliverToBoxAdapter(
                child: ProjectsSection(
                  mobile: mobile,
                  sectionKey: _sectionKeys[2],
                ),
              ),
              SliverToBoxAdapter(
                child: ExperienceSection(
                  mobile: mobile,
                  sectionKey: _sectionKeys[3],
                ),
              ),
              SliverToBoxAdapter(
                child: ContactSection(
                  mobile: mobile,
                  sectionKey: _sectionKeys[4],
                ),
              ),
              SliverToBoxAdapter(child: SiteFooter(mobile: mobile)),
            ],
          );
        },
      ),
    );
  }
}
