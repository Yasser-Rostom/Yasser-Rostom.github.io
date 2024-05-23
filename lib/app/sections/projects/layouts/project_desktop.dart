import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/sections/projects/widgets/project_card.dart';
import 'package:portfolio/app/utils/project_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/links/links.dart';
import 'package:portfolio/app/widgets/action_button.dart';
import 'package:portfolio/app/widgets/section_container.dart';

class ProjectsContentDesktop extends StatelessWidget {
  const ProjectsContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(title: "Projects",
        subTitle: "Here you can find some of my latest projects I have worked on.",
        mainChild: Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: 15.w,
          spacing: 10,
          children: projectUtils
              .asMap()
              .entries
              .map(
                  (e) => ProjectCard(project: e.value)
          )
              .toList(),
        ),
        bottomChild: ActionGradientButton(
          onTap: () {
            openURL(gitHub);

          },
        buttonLabel:   'See More',
        ));



  }
}