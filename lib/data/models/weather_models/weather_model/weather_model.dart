import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_coding_setup/data/models/weather_models/cloud_model/cloud_model.dart';
import 'package:my_coding_setup/data/models/weather_models/coordinate_model/coordinate_model.dart';
import 'package:my_coding_setup/data/models/weather_models/country_model/country_model.dart';
import 'package:my_coding_setup/data/models/weather_models/temperature_model/temperature_detail_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_detail_model/weather_detail_model.dart';
import 'package:my_coding_setup/data/models/weather_models/wind_model/wind_model.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@Freezed()
class WeatherModel extends Equatable with _$WeatherModel {
  const factory WeatherModel({
    @JsonKey(name: 'coord') required final Coord coordinateDetail,
    @JsonKey(name: 'weather') required final List<WeatherDetail> weather,
    @JsonKey(name: 'main') required final TemperatureDetailModel temperatureDetailModel,
    @JsonKey(name: 'wind') required final WindDetail windDetail,
    @JsonKey(name: 'clouds') required final Clouds cloudDetail,
    @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson) required final DateTime calculatedAt,
    @JsonKey(name: 'sys') required final CountryDetail countryDetail,
    @JsonKey(name: 'name', defaultValue: 'Unknown City') required final String cityName,
    @JsonKey(name: 'timezone', defaultValue: 0) required final int timezone,
  }) = _WeatherModel;

  const WeatherModel._();

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  @override
  List<Object?> get props => [
        coordinateDetail,
        weather,
        temperatureDetailModel,
        windDetail,
        cloudDetail,
        calculatedAt,
        countryDetail,
        cityName,
        timezone,
      ];

  DateTime get shiftedTime {
    return calculatedAt.add(Duration(seconds: timezone));
  }
}

DateTime _calculatedAtFromJson(int? json) {
  return json == null ? DateTime.now() : DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: true);
}
