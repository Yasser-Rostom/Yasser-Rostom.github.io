import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/sections/about/overview.dart';
import 'package:portfolio/app/sections/contact/contact.dart';
import 'package:portfolio/app/sections/projects/projects_view.dart';
import 'package:portfolio/app/sections/servcies/services_view.dart';
import 'package:portfolio/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    Overview(),
    ServicesView(),
    ProjectsView(),
    ContactView(),
    Footer()
  ];
}