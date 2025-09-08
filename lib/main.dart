import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/app/layout_template.dart';
import 'package:portfolio/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/utils/project_utils.dart';
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
  setupLocator();
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
            title: 'Yasser Rostom - Portfolio',
            initialRoute: "/",
            routes: {"/": (context) => const LayoutTemplate()},
          );
        });
  }
}
