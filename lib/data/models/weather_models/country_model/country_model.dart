import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@unfreezed
class CountryDetail with _$CountryDetail {
  const factory CountryDetail({
    @JsonKey(name: 'id', defaultValue: 0) final int? id,
    @JsonKey(name: 'country', defaultValue: 'TR') final String? country,
  }) = _CountryDetail;

  const CountryDetail._();

  factory CountryDetail.fromJson(Map<String, dynamic> json) => _$CountryDetailFromJson(json);
}
