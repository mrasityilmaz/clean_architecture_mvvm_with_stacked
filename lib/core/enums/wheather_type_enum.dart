// ignore_for_file: sort_constructors_first
///
/// WheatherTypeIcons enum
/// Documentation: https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2
enum WeatherTypeEnum {
  clearSkyDay('01d', 'clear_sky'),
  clearSkyNight('01n', 'clear_sky'),
  fewCloudsDay('02d', 'few_clouds'),
  fewCloudsNight('02n', 'few_clouds'),
  scatteredCloudsDay('03d', 'scattered_clouds'),
  scatteredCloudsNight('03n', 'scattered_clouds'),
  brokenCloudsDay('04d', 'broken_clouds'),
  brokenCloudsNight('04n', 'broken_clouds'),
  showerRainDay('09d', 'shower_rain'),
  showerRainNight('09n', 'shower_rain'),
  rainDay('10d', 'rain'),
  rainNight('10n', 'rain'),
  thunderstormDay('11d', 'thunderstorm'),
  thunderstormNight('11n', 'thunderstorm'),
  snowDay('13d', 'snow'),
  snowNight('13n', 'snow'),
  mistDay('50d', 'mist'),
  mistNight('50n', 'mist');

  ///
  /// WheatherTypeIcons Assets Base Path
  ///
  final String _dayIconUrl = 'assets/wheather_icons/day/';
  final String _nightIconUrl = 'assets/wheather_icons/night/';

  /// Icon Codes

  final String iconCode;
  final String weatherDescription;

  const WeatherTypeEnum(this.iconCode, this.weatherDescription);

  ///
  /// Get Icon Path for Day
  ///
  String get iconPath {
    return '${name.contains('Day') ? _dayIconUrl : _nightIconUrl}$iconCode@2x.png';
  }
}
