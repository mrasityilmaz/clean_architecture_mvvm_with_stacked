import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_coding_setup/core/constants/weather_constants.dart';
import 'package:my_coding_setup/core/enums/wheather_type_enum.dart';
import 'package:my_coding_setup/core/extensions/list_extension.dart';

part 'weather_detail_model.freezed.dart';
part 'weather_detail_model.g.dart';

@unfreezed
class WeatherDetail with _$WeatherDetail {
  const factory WeatherDetail({
    @JsonKey(
      name: 'icon',
      fromJson: _wheatherTypeEnumFromJson,
      defaultValue: WeatherTypeEnum.clearSkyDay,
    )
    required final WeatherTypeEnum icon,
    @Default('')
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    final String bgPath,
    final int? id,
    final String? main,
    final String? description,
  }) = _WeatherDetail;

  const WeatherDetail._();

  factory WeatherDetail.fromJson(Map<String, dynamic> json) => _$WeatherDetailFromJson(json).copyWith(
        bgPath: _weatherBgPath(_wheatherTypeEnumFromJson(json['icon'] as String)),
      );
}

String _weatherBgPath(WeatherTypeEnum type) {
  return WeatherConstants().getWeatherBgPath(type);
}

WeatherTypeEnum _wheatherTypeEnumFromJson(String json) {
  return WeatherTypeEnum.values.firstWhereOrDefault((element) => element.iconCode == json, defaultValue: WeatherTypeEnum.clearSkyDay);
}
