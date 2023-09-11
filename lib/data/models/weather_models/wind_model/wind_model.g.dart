// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WindDetail _$$_WindDetailFromJson(Map<String, dynamic> json) =>
    _$_WindDetail(
      windSpeed: (json['speed'] as num?)?.toDouble() ?? 0,
      windDegree: json['deg'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WindDetailToJson(_$_WindDetail instance) =>
    <String, dynamic>{
      'speed': instance.windSpeed,
      'deg': instance.windDegree,
    };
