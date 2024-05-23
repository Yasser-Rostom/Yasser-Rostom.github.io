import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/about/overview.dart';
import 'package:portfolio/app/sections/contact/contact.dart';
import 'package:portfolio/app/sections/projects/projects_view.dart';
import 'package:portfolio/app/sections/servcies/services_view.dart';
import 'package:portfolio/core/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const Overview());
      case ServicesRoute:
      return _getPageRoute(const ServicesView());
    case ContactRoute:
      return _getPageRoute(const ContactView());
    case ProjectsRoute:
      return _getPageRoute(const ProjectsView());
    default:
      return _getPageRoute(const Overview());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}