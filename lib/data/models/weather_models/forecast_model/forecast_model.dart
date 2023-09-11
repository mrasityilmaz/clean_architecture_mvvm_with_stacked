import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_coding_setup/data/models/weather_models/cloud_model/cloud_model.dart';
import 'package:my_coding_setup/data/models/weather_models/temperature_model/temperature_detail_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_detail_model/weather_detail_model.dart';
import 'package:my_coding_setup/data/models/weather_models/wind_model/wind_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@unfreezed
class WeatherForecastModel with _$WeatherForecastModel {
  const factory WeatherForecastModel({
    @JsonKey(name: 'weather') required final List<WeatherDetail> weather,
    @JsonKey(name: 'main') required final TemperatureDetailModel temperatureDetailModel,
    @JsonKey(name: 'wind') required final WindDetail windDetail,
    @JsonKey(name: 'clouds') required final Clouds cloudDetail,
    @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson) required final DateTime calculatedAt,
  }) = _WeatherForecastModel;

  const WeatherForecastModel._();

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) => _$WeatherForecastModelFromJson(json);
}

DateTime _calculatedAtFromJson(int? json) {
  return json == null ? DateTime.now() : DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);
}
