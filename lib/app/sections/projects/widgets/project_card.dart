import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/utils/project_utils.dart';
import 'package:portfolio/core/helper/url_launcher.dart';
import 'package:portfolio/core/widgets/gradient_border_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
    this.width = 400,
  });

  final ProjectUtils project;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 18
              : 24;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 12
              : 14;
    
      return GradientBorderContainer(
        shape: BoxShape.rectangle,
       width: width,
        child: InkWell(
          onTap: () {
            openURL(project.projectUrl);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  // color: Colors.red
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  project.imgUrl,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: TextStyle(
                          fontSize: titleSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: width,
                        child: Text(project.projectDesc,
                            style: TextStyle(
                                fontSize: descriptionSize,
                                color: Colors.black))),
                    10.verticalSpace,
                    SizedBox(
                        width: width,
                        child: Text(
                          "#Stack: ${project.stack}",
                          style: TextStyle(
                              fontSize: descriptionSize,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
