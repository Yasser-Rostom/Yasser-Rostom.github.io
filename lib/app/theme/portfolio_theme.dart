import 'package:flutter/material.dart';

abstract final class PortfolioPalette {
  static const ink = Color(0xFF101714);
  static const paper = Color(0xFFF5F4EF);
  static const muted = Color(0xFF68716C);
  static const green = Color(0xFFB8F36B);
  static const accent = Color(0xFF648845);
  static const border = Color(0xFFE6E7E1);
  static const alternate = Color(0xFFEAECE5);
}

final portfolioTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Arial',
  scaffoldBackgroundColor: PortfolioPalette.paper,
  colorScheme: ColorScheme.fromSeed(
    seedColor: PortfolioPalette.ink,
    surface: PortfolioPalette.paper,
  ),
);
