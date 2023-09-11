import 'package:stacked/stacked_annotations.dart';

final class APIConstants {
  factory APIConstants() {
    _instance ??= const APIConstants._();
    return _instance!;
  }
  const APIConstants._();
  static APIConstants? _instance;

  @factoryParam
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5/';

  static String get baseURL => _baseUrl;
}
