import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectUtils {
  final String imgUrl;
  final String title;
  final String projectUrl;
  final String stack;
  final String projectDesc;
  final Timestamp createdAt;

  ProjectUtils({
    required this.imgUrl,
    required this.title,
    required this.projectUrl,
    required this.stack,
    required this.projectDesc,
    required this.createdAt,
  });

  /// Convert Firestore/JSON data → ProjectUtils
  factory ProjectUtils.fromJson(Map<String, dynamic> json) {
    return ProjectUtils(
      imgUrl: json['imgUrl'] as String? ?? '',
      title: json['title'] as String? ?? '',
      projectUrl: json['projectUrl'] as String? ?? '',
      stack: json['stack'] as String? ?? '',
      createdAt: json['createdAt'] as Timestamp? ?? Timestamp.now(),
      projectDesc: json['projectDesc'] as String? ?? '',
    );
  }

  /// Convert ProjectUtils → JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'imgUrl': imgUrl,
      'title': title,
      'projectUrl': projectUrl,
      'stack': stack,
      'createdAt': createdAt,
      'projectDesc': projectDesc,
    };
  }
}



//
