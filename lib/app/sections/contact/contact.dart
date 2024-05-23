import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'layouts/contact_desktop.dart';
import 'layouts/contact_mobile.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const ContactMobileTab(),
        desktop: (BuildContext context) => const ContactDesktop(),
      ),
    );
  }

}
