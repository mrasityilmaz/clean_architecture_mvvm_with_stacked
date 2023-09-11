// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coord _$$_CoordFromJson(Map<String, dynamic> json) => _$_Coord(
      longitude: (json['lon'] as num?)?.toDouble() ?? 0,
      latitude: (json['lat'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CoordToJson(_$_Coord instance) => <String, dynamic>{
      'lon': instance.longitude,
      'lat': instance.latitude,
    };
