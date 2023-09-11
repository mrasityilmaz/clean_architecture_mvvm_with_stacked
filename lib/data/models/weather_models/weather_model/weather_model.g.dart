// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      coordinateDetail: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperatureDetailModel:
          TemperatureDetailModel.fromJson(json['main'] as Map<String, dynamic>),
      windDetail: WindDetail.fromJson(json['wind'] as Map<String, dynamic>),
      cloudDetail: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      calculatedAt: _calculatedAtFromJson(json['dt'] as int?),
      countryDetail:
          CountryDetail.fromJson(json['sys'] as Map<String, dynamic>),
      cityName: json['name'] as String? ?? 'Unknown City',
      timezone: json['timezone'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'coord': instance.coordinateDetail,
      'weather': instance.weather,
      'main': instance.temperatureDetailModel,
      'wind': instance.windDetail,
      'clouds': instance.cloudDetail,
      'dt': instance.calculatedAt.toIso8601String(),
      'sys': instance.countryDetail,
      'name': instance.cityName,
      'timezone': instance.timezone,
    };
