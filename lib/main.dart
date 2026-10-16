import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/layout_template.dart';
import 'package:portfolio/app/theme/portfolio_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Future<void> pushProjectsToFirestore() async {
//   final collection = FirebaseFirestore.instance.collection('projects');
//
//
//     await collection.add(projectUtils[0].toJson());
//     await collection.add(projectUtils[1].toJson());
//
// }
Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await pushProjectsToFirestore();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1600, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Yasser Rostom | Senior Software Engineer, Mobile & Backend',
            theme: portfolioTheme,
            initialRoute: "/",
            routes: {"/": (context) => const LayoutTemplate()},
          );
        });
  }
}
