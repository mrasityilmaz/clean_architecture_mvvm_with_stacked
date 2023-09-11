import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  factory AppTheme() => _instance ??= AppTheme._();

  AppTheme._();
  static AppTheme? _instance;

  static final TextStyle _arvoTextStyle = GoogleFonts.arvo();
  static final TextTheme _arvoTextTheme = GoogleFonts.arvoTextTheme().apply(displayColor: Colors.white, decorationColor: Colors.white, bodyColor: Colors.white);

  final ThemeData _themeData = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    fontFamily: _arvoTextStyle.fontFamily,
    textTheme: _arvoTextTheme.copyWith(),
  );

  ThemeData get themeData => _themeData;
}
