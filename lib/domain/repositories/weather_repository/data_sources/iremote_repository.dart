import 'package:my_coding_setup/core/extensions/dartz_extension.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_model/weather_model.dart';

abstract class IWeatherRemoteRepository {
  Future<DataModel<WeatherModel>> getWeather({required double lat, required double long});
  Future<DataModel<List<WeatherForecastModel>>> getWeatherForecast({required double lat, required double long});
}
