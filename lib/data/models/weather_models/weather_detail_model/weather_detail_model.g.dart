// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDetail _$$_WeatherDetailFromJson(Map<String, dynamic> json) =>
    _$_WeatherDetail(
      icon: json['icon'] == null
          ? WeatherTypeEnum.clearSkyDay
          : _wheatherTypeEnumFromJson(json['icon'] as String),
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_WeatherDetailToJson(_$_WeatherDetail instance) =>
    <String, dynamic>{
      'icon': _$WeatherTypeEnumEnumMap[instance.icon]!,
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
    };

const _$WeatherTypeEnumEnumMap = {
  WeatherTypeEnum.clearSkyDay: 'clearSkyDay',
  WeatherTypeEnum.clearSkyNight: 'clearSkyNight',
  WeatherTypeEnum.fewCloudsDay: 'fewCloudsDay',
  WeatherTypeEnum.fewCloudsNight: 'fewCloudsNight',
  WeatherTypeEnum.scatteredCloudsDay: 'scatteredCloudsDay',
  WeatherTypeEnum.scatteredCloudsNight: 'scatteredCloudsNight',
  WeatherTypeEnum.brokenCloudsDay: 'brokenCloudsDay',
  WeatherTypeEnum.brokenCloudsNight: 'brokenCloudsNight',
  WeatherTypeEnum.showerRainDay: 'showerRainDay',
  WeatherTypeEnum.showerRainNight: 'showerRainNight',
  WeatherTypeEnum.rainDay: 'rainDay',
  WeatherTypeEnum.rainNight: 'rainNight',
  WeatherTypeEnum.thunderstormDay: 'thunderstormDay',
  WeatherTypeEnum.thunderstormNight: 'thunderstormNight',
  WeatherTypeEnum.snowDay: 'snowDay',
  WeatherTypeEnum.snowNight: 'snowNight',
  WeatherTypeEnum.mistDay: 'mistDay',
  WeatherTypeEnum.mistNight: 'mistNight',
};
