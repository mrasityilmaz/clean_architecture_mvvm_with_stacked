import 'package:my_coding_setup/core/enums/wheather_type_enum.dart';

final class WeatherConstants {
  factory WeatherConstants() {
    return _instance ??= WeatherConstants._internal();
  }

  WeatherConstants._internal();
  static WeatherConstants? _instance;

  String getWeatherBgPath(WeatherTypeEnum type) {
    return (_bgPaths[type.weatherDescription]!
          ..shuffle()
          ..toList())
        .first;
  }

  Map<String, List<String>> get _bgPaths => {
        WeatherTypeEnum.clearSkyDay.weatherDescription: [
          'assets/weather_backgrounds/clear_sky/1.jpg',
          'assets/weather_backgrounds/clear_sky/2.jpg',
          'assets/weather_backgrounds/clear_sky/3.jpg',
          'assets/weather_backgrounds/clear_sky/4.jpg',
        ],
        WeatherTypeEnum.fewCloudsDay.weatherDescription: [
          'assets/weather_backgrounds/clouds/1.jpg',
          'assets/weather_backgrounds/clouds/2.jpg',
          'assets/weather_backgrounds/clouds/3.jpg',
          'assets/weather_backgrounds/clouds/4.jpg',
          'assets/weather_backgrounds/clouds/5.jpg',
          'assets/weather_backgrounds/clouds/6.jpg',
          'assets/weather_backgrounds/clouds/7.jpg',
          'assets/weather_backgrounds/clouds/8.jpg',
        ],
        WeatherTypeEnum.scatteredCloudsDay.weatherDescription: [
          'assets/weather_backgrounds/clouds/1.jpg',
          'assets/weather_backgrounds/clouds/2.jpg',
          'assets/weather_backgrounds/clouds/3.jpg',
          'assets/weather_backgrounds/clouds/4.jpg',
          'assets/weather_backgrounds/clouds/5.jpg',
          'assets/weather_backgrounds/clouds/6.jpg',
          'assets/weather_backgrounds/clouds/7.jpg',
          'assets/weather_backgrounds/clouds/8.jpg',
        ],
        WeatherTypeEnum.brokenCloudsDay.weatherDescription: [
          'assets/weather_backgrounds/clouds/1.jpg',
          'assets/weather_backgrounds/clouds/2.jpg',
          'assets/weather_backgrounds/clouds/3.jpg',
          'assets/weather_backgrounds/clouds/4.jpg',
          'assets/weather_backgrounds/clouds/5.jpg',
          'assets/weather_backgrounds/clouds/6.jpg',
          'assets/weather_backgrounds/clouds/7.jpg',
          'assets/weather_backgrounds/clouds/8.jpg',
        ],
        WeatherTypeEnum.showerRainDay.weatherDescription: [
          'assets/weather_backgrounds/rain/1.jpg',
          'assets/weather_backgrounds/rain/2.jpg',
          'assets/weather_backgrounds/rain/3.jpg',
          'assets/weather_backgrounds/rain/4.jpg',
        ],
        WeatherTypeEnum.rainDay.weatherDescription: [
          'assets/weather_backgrounds/rain/1.jpg',
          'assets/weather_backgrounds/rain/2.jpg',
          'assets/weather_backgrounds/rain/3.jpg',
          'assets/weather_backgrounds/rain/4.jpg',
        ],
        WeatherTypeEnum.thunderstormDay.weatherDescription: [
          'assets/weather_backgrounds/thunderstorm/1.jpg',
          'assets/weather_backgrounds/thunderstorm/2.jpg',
          'assets/weather_backgrounds/thunderstorm/3.jpg',
          'assets/weather_backgrounds/thunderstorm/4.jpg',
        ],
        WeatherTypeEnum.snowDay.weatherDescription: [
          'assets/weather_backgrounds/snow/1.jpg',
          'assets/weather_backgrounds/snow/2.jpg',
          'assets/weather_backgrounds/snow/3.jpg',
          'assets/weather_backgrounds/snow/4.jpg',
        ],
        WeatherTypeEnum.mistDay.weatherDescription: [
          'assets/weather_backgrounds/mist/1.jpg',
          'assets/weather_backgrounds/mist/2.jpg',
          'assets/weather_backgrounds/mist/3.jpg',
          'assets/weather_backgrounds/mist/4.jpg',
        ],
      };
}
