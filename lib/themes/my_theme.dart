import 'package:flutter/material.dart';

import 'theme_colors.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: ThemeColors.primary,
  primaryColor: ThemeColors.primary,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  ),
);
