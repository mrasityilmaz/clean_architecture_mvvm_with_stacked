// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TemperatureDetailModel _$$_TemperatureDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_TemperatureDetailModel(
      temperature: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0,
      minimumTemperature: (json['temp_min'] as num?)?.toDouble() ?? 0,
      maximumTemperature: (json['temp_max'] as num?)?.toDouble() ?? 0,
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] as int? ?? 0,
      seaLevel: json['sea_level'] as int? ?? 0,
      groundLevel: json['grnd_level'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TemperatureDetailModelToJson(
        _$_TemperatureDetailModel instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'feels_like': instance.feelsLike,
      'temp_min': instance.minimumTemperature,
      'temp_max': instance.maximumTemperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.groundLevel,
    };
