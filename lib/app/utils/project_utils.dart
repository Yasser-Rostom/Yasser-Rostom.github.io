class ProjectUtils {
  final String imgUrl;
  final String title;
  final String projectUrl;
  final String stack;
  final String projectDesc;

  ProjectUtils({
    required this.imgUrl,
    required this.title,
    required this.projectUrl,
    required this.stack,
    required this.projectDesc,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
      title: "Cryptonaire",
      imgUrl: "projects/cryptonaire_app.png",
      projectDesc:
          "Cryptonaire is an exciting new quiz & gaming app that lets users learn about new crypto projects and earn rewards in the form of cryptocurrencies.",
      stack: "Flutter, Firebase Notification, Bloc, MongoDB, Figma",
      projectUrl: "https://cryptonaire.app/"),
  ProjectUtils(
      title: "CryptoChefs - UI/UX Design",
      imgUrl: "projects/cheesy_wheel.png",
      projectDesc:
          "Complete design of a new feature called Bistro",
      stack: "Figma, Photoshop",
      projectUrl: "https://app.cryptochefs.io/bistro"),
  ProjectUtils(
      title: "Balanced News Summary",
      imgUrl: "projects/bns.jpeg",
      projectDesc:
          "BNS is a platform allows readers to read articles and rate their bias.",
      stack: "Flutter, Firebase DB",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.aus.balancednews"),
  ProjectUtils(
      title: "Scam Scan",
      imgUrl: "projects/scamscan.png",
      projectDesc:
          "ScamScan is an app for travellers by travellers, designed to help you to reaching your destination – safely. No matter if its a business-, honeymoon or adventure trip.",
      stack: "Kotlin, Xml, Firebase Realtime DB",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.geo.scamscan"),
  ProjectUtils(
      title: "Auditory Advantage - TTS",
      imgUrl: "projects/auditory_advantage.png",
      projectDesc:
          "Auditory Advantage is an auto reader and voice speaker that acts as a PDF reader, book reader, and image reader.",
      stack: "Java, Xml, Local DB",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.aus.balancednews"),
  ProjectUtils(
      title: "Solo Mas App | Bug Fixes and Ads integration",
      imgUrl: "projects/solomas.jpeg",
      projectDesc:
          "The Solo Mas App is a social travel app which connects its users with Carnival enthusiasts and masqueraders near them. I have helped with bug fixes and integrated custom-designed ads in non-intrusive ways",
      stack: "Flutter, BLoC, Admob, Unit Testing, Figma",
      projectUrl:
          "https://www.solomasapp.com/"),
];

//
