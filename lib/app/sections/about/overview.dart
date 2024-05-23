import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layouts/home_desktop.dart';
import 'layouts/home_mobile.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 40),
      padding: const EdgeInsets.all(10),
      child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const HomeContentMobile(),
        desktop: (BuildContext context) => const HomeContentDesktop(),
      ),
    );
  }
}
