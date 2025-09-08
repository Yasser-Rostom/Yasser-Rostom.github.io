import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/sections/projects/widgets/project_card.dart';
import 'package:portfolio/app/utils/project_utils.dart';
import 'package:portfolio/app/widgets/action_button.dart';
import 'package:portfolio/app/widgets/section_container.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';

class ProjectsContentMobile extends StatelessWidget {
  final List<ProjectUtils> projects;
  const ProjectsContentMobile({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      title: "Projects",
      subTitle: "Here you can find some of my latest projects I have worked on.",
      mainChild: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 35.w,
        spacing: 10,
        children: projects.map((p) => ProjectCard(project: p)).toList(),
      ),
      bottomChild: ActionGradientButton(
        onTap: () {
          openURL(gitHub);
        },
        buttonLabel: 'See More',
      ),
    );
  }
}


