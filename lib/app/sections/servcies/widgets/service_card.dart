import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/utils/service_utils.dart';
import 'package:portfolio/core/widgets/gradient_border_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
    this.width = 250,
  });

  final ServiceUtils service;
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(service.imgUrl, scale: 5,),
              Text(
                service.title,
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
                  child: Text(service.projectDesc,
                      style: TextStyle(
                          fontSize: descriptionSize,
                          color: Colors.black))),
              10.verticalSpace,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "#Stack: ${service.stack}",
                  style: TextStyle(
                      fontSize: descriptionSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,),
                ),
              ),const SizedBox(height: 10,)
            ],
          ),
        ),
      );
    });
  }
}
