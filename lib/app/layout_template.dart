import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/navigation_bar/layouts/mobile_layout/widgets/drawer.dart';
import 'package:portfolio/app/sections/navigation_bar/navigation_bar.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/services/scrolling_provider.dart';
import 'package:portfolio/core/utils/views_util.dart';
import 'package:portfolio/app/widgets/centered_view.dart';
import 'package:portfolio/locator.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});


  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? const CustomNavigationDrawer() : null,
        backgroundColor: Colors.transparent,
        body:  Column(
          children: <Widget>[
            const CustomNavigationBar(),
          Container(
            width: double.infinity,
            height: 2,
            decoration: const BoxDecoration(
                gradient: bluePurpleWhite,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
            Expanded(
              child: CenteredView(
                         child: ScrollablePositionedList.builder(
                   padding: EdgeInsets.zero,
                   itemCount: BodyUtils.views.length,
                   itemBuilder: (context, index) => BodyUtils.views[index],
                   itemScrollController: locator<ScrollProvider>().itemScrollController,
                 ),
                   ),
            ),

          ],

        ),
      ),
    );
  }
}