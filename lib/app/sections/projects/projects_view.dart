import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layouts/project_desktop.dart';
import 'layouts/project_mobile.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ProjectsContentMobile(),
      desktop: (BuildContext context) => const ProjectsContentDesktop(),
    );
  }
}
