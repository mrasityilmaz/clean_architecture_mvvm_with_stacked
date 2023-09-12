final class APIConstants {
  factory APIConstants() {
    _instance ??= const APIConstants._();
    return _instance!;
  }
  const APIConstants._();
  static APIConstants? _instance;

  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5/';

  static String get baseURL => _baseUrl;
}
