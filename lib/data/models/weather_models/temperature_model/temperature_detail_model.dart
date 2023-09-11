import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_detail_model.freezed.dart';
part 'temperature_detail_model.g.dart';

@unfreezed
class TemperatureDetailModel with _$TemperatureDetailModel {
  const factory TemperatureDetailModel({
    @JsonKey(defaultValue: 0, name: 'temp') final double? temperature,
    @JsonKey(defaultValue: 0, name: 'feels_like') final double? feelsLike,
    @JsonKey(defaultValue: 0, name: 'temp_min') final double? minimumTemperature,
    @JsonKey(defaultValue: 0, name: 'temp_max') final double? maximumTemperature,
    @JsonKey(defaultValue: 0, name: 'pressure') final int? pressure,
    @JsonKey(defaultValue: 0, name: 'humidity') final int? humidity,
    @JsonKey(defaultValue: 0, name: 'sea_level') final int? seaLevel,
    @JsonKey(defaultValue: 0, name: 'grnd_level') final int? groundLevel,
  }) = _TemperatureDetailModel;

  const TemperatureDetailModel._();

  factory TemperatureDetailModel.fromJson(Map<String, dynamic> json) => _$TemperatureDetailModelFromJson(json);

  String get temperatureCelsiusString => '${(temperature ?? feelsLike ?? minimumTemperature ?? maximumTemperature ?? 0).roundToDouble().toStringAsFixed(0)}°C';

  double get temperatureValue => temperature ?? feelsLike ?? minimumTemperature ?? maximumTemperature ?? 0;
}
