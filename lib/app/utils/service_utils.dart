class ServiceUtils {
  final String imgUrl;
  final String title;
  final String stack;
  final String projectDesc;

  ServiceUtils({
    required this.imgUrl,
    required this.title,
    required this.stack,
    required this.projectDesc,
  });
}

List<ServiceUtils> serviceUtils = [
  ServiceUtils(
    title: "Mobile Development",
    imgUrl: "services/programming.png",
    projectDesc:
        "State-of-the-art mobile app development for both Android & iOS.",
    stack: "Flutter, Java, and Kotlin",
  ),
  ServiceUtils(
    title: "Web Development",
    imgUrl: "services/web_dev.png",
    projectDesc:
    "Responsive, light-weight web application.",
    stack: "Flutter, Figma, HTML, CSS",
  ),
  ServiceUtils(
    title: "Mobile UI/UX Design",
    imgUrl: "services/designing.png",
    projectDesc:
        "Eye-catching, user-friendly UIs following the best practices.",
    stack: "Figma, Adobe XD",
  )
];
