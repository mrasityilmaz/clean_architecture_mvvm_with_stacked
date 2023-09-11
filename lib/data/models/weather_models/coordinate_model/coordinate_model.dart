import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart';

@unfreezed
class Coord with _$Coord {
  const factory Coord({
    @JsonKey(name: 'lon', defaultValue: 0) final double? longitude,
    @JsonKey(name: 'lat', defaultValue: 0) final double? latitude,
  }) = _Coord;
  const Coord._();

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}
