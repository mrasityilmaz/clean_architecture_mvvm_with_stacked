import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_model.freezed.dart';
part 'cloud_model.g.dart';

@unfreezed
class Clouds with _$Clouds {
  const factory Clouds({
    @JsonKey(name: 'all', defaultValue: 0) final int? cloudiness,
  }) = _Clouds;

  const Clouds._();

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}
