import 'package:flutter/material.dart';

@immutable
final class AppColorScheme {
  const AppColorScheme._();
  static AppColorScheme? _instace;
  AppColorScheme get instance => _instace ??= const AppColorScheme._();

  static const Color orangeColor = Color(0xFFEC6E4C);
  static const Color cloudColor = Color(0xFFF2F2F1);
  static const Color darkCloudColor = Color(0xFF48484A);

  static const Color yellowColor = Color(0xFFFFCD00);
}
