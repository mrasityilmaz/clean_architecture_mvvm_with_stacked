import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_model.freezed.dart';
part 'wind_model.g.dart';

@unfreezed
class WindDetail with _$WindDetail {
  const factory WindDetail({
    @JsonKey(name: 'speed', defaultValue: 0) final double? windSpeed,
    @JsonKey(name: 'deg', defaultValue: 0) final int? windDegree,
  }) = _WindDetail;

  const WindDetail._();

  factory WindDetail.fromJson(Map<String, dynamic> json) => _$WindDetailFromJson(json);
}
