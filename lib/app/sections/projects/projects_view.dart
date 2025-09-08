import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/app/sections/projects/layouts/project_desktop.dart';
import 'package:portfolio/app/sections/projects/layouts/project_mobile.dart';
import 'package:portfolio/app/utils/project_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  late Future<List<ProjectUtils>> _projectsFuture;

  @override
  void initState() {
    super.initState();
    _projectsFuture = _fetchProjects();
  }

  Future<List<ProjectUtils>> _fetchProjects() async {
    final snapshot =
    await FirebaseFirestore.instance.collection('projects').orderBy('createdAt', descending: true).get();

    return snapshot.docs
        .map((doc) => ProjectUtils.fromJson(doc.data()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProjectUtils>>(
      future: _projectsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Loading state
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error loading projects: ${snapshot.error}',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          );
        }

        final projects = snapshot.data ?? [];

        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) =>
              ProjectsContentMobile(projects: projects),
          desktop: (BuildContext context) =>
              ProjectsContentDesktop(projects: projects),
        );
      },
    );
  }
}
