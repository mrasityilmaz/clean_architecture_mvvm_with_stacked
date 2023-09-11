// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherForecastModel _$$_WeatherForecastModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherForecastModel(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperatureDetailModel:
          TemperatureDetailModel.fromJson(json['main'] as Map<String, dynamic>),
      windDetail: WindDetail.fromJson(json['wind'] as Map<String, dynamic>),
      cloudDetail: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      calculatedAt: _calculatedAtFromJson(json['dt'] as int?),
    );

Map<String, dynamic> _$$_WeatherForecastModelToJson(
        _$_WeatherForecastModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.temperatureDetailModel,
      'wind': instance.windDetail,
      'clouds': instance.cloudDetail,
      'dt': instance.calculatedAt.toIso8601String(),
    };
