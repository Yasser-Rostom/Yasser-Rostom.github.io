import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layouts/service_desktop.dart';
import 'layouts/service_mobile.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ServiceContentMobile(),
      desktop: (BuildContext context) => const ServiceContentDesktop(),
    );
  }
}
