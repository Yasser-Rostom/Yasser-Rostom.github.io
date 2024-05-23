import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({super.key, required this.title, required this.subTitle, this.mainChild, this.bottomChild});
  final String title, subTitle;
  final Widget? mainChild, bottomChild;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInformation) {
        double titleSize =
        sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 32
            : 40;
        double subTitleSize = sizingInformation.deviceScreenType ==
            DeviceScreenType.mobile ?
        18 : 24;
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            30.verticalSpace,
            Text(title,style: TextStyle(fontSize: titleSize,color: CupertinoColors.white,fontWeight: FontWeight.bold),),
            10.verticalSpace,
             Text(subTitle,style: TextStyle(fontSize: subTitleSize,color: CupertinoColors.white)),
            30.verticalSpace,
            mainChild?? const SizedBox.shrink(),
            30.verticalSpace,
            bottomChild ?? const SizedBox.shrink(),
            bottomChild!=null? 100.verticalSpace : const SizedBox.shrink()
          ],
        );
      }
    );
  }
}
