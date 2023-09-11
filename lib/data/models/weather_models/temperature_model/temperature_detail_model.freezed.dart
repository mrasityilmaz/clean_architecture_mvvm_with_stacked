// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemperatureDetailModel _$TemperatureDetailModelFromJson(
    Map<String, dynamic> json) {
  return _TemperatureDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TemperatureDetailModel {
  @JsonKey(defaultValue: 0, name: 'temp')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'feels_like')
  double? get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'temp_min')
  double? get minimumTemperature => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'temp_max')
  double? get maximumTemperature => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'pressure')
  int? get pressure => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'humidity')
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'sea_level')
  int? get seaLevel => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'grnd_level')
  int? get groundLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureDetailModelCopyWith<TemperatureDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDetailModelCopyWith<$Res> {
  factory $TemperatureDetailModelCopyWith(TemperatureDetailModel value,
          $Res Function(TemperatureDetailModel) then) =
      _$TemperatureDetailModelCopyWithImpl<$Res, TemperatureDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'temp') double? temperature,
      @JsonKey(defaultValue: 0, name: 'feels_like') double? feelsLike,
      @JsonKey(defaultValue: 0, name: 'temp_min') double? minimumTemperature,
      @JsonKey(defaultValue: 0, name: 'temp_max') double? maximumTemperature,
      @JsonKey(defaultValue: 0, name: 'pressure') int? pressure,
      @JsonKey(defaultValue: 0, name: 'humidity') int? humidity,
      @JsonKey(defaultValue: 0, name: 'sea_level') int? seaLevel,
      @JsonKey(defaultValue: 0, name: 'grnd_level') int? groundLevel});
}

/// @nodoc
class _$TemperatureDetailModelCopyWithImpl<$Res,
        $Val extends TemperatureDetailModel>
    implements $TemperatureDetailModelCopyWith<$Res> {
  _$TemperatureDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? feelsLike = freezed,
    Object? minimumTemperature = freezed,
    Object? maximumTemperature = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? seaLevel = freezed,
    Object? groundLevel = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      minimumTemperature: freezed == minimumTemperature
          ? _value.minimumTemperature
          : minimumTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maximumTemperature: freezed == maximumTemperature
          ? _value.maximumTemperature
          : maximumTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      groundLevel: freezed == groundLevel
          ? _value.groundLevel
          : groundLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemperatureDetailModelCopyWith<$Res>
    implements $TemperatureDetailModelCopyWith<$Res> {
  factory _$$_TemperatureDetailModelCopyWith(_$_TemperatureDetailModel value,
          $Res Function(_$_TemperatureDetailModel) then) =
      __$$_TemperatureDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'temp') double? temperature,
      @JsonKey(defaultValue: 0, name: 'feels_like') double? feelsLike,
      @JsonKey(defaultValue: 0, name: 'temp_min') double? minimumTemperature,
      @JsonKey(defaultValue: 0, name: 'temp_max') double? maximumTemperature,
      @JsonKey(defaultValue: 0, name: 'pressure') int? pressure,
      @JsonKey(defaultValue: 0, name: 'humidity') int? humidity,
      @JsonKey(defaultValue: 0, name: 'sea_level') int? seaLevel,
      @JsonKey(defaultValue: 0, name: 'grnd_level') int? groundLevel});
}

/// @nodoc
class __$$_TemperatureDetailModelCopyWithImpl<$Res>
    extends _$TemperatureDetailModelCopyWithImpl<$Res,
        _$_TemperatureDetailModel>
    implements _$$_TemperatureDetailModelCopyWith<$Res> {
  __$$_TemperatureDetailModelCopyWithImpl(_$_TemperatureDetailModel _value,
      $Res Function(_$_TemperatureDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? feelsLike = freezed,
    Object? minimumTemperature = freezed,
    Object? maximumTemperature = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? seaLevel = freezed,
    Object? groundLevel = freezed,
  }) {
    return _then(_$_TemperatureDetailModel(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      minimumTemperature: freezed == minimumTemperature
          ? _value.minimumTemperature
          : minimumTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maximumTemperature: freezed == maximumTemperature
          ? _value.maximumTemperature
          : maximumTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      groundLevel: freezed == groundLevel
          ? _value.groundLevel
          : groundLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TemperatureDetailModel extends _TemperatureDetailModel {
  const _$_TemperatureDetailModel(
      {@JsonKey(defaultValue: 0, name: 'temp') this.temperature,
      @JsonKey(defaultValue: 0, name: 'feels_like') this.feelsLike,
      @JsonKey(defaultValue: 0, name: 'temp_min') this.minimumTemperature,
      @JsonKey(defaultValue: 0, name: 'temp_max') this.maximumTemperature,
      @JsonKey(defaultValue: 0, name: 'pressure') this.pressure,
      @JsonKey(defaultValue: 0, name: 'humidity') this.humidity,
      @JsonKey(defaultValue: 0, name: 'sea_level') this.seaLevel,
      @JsonKey(defaultValue: 0, name: 'grnd_level') this.groundLevel})
      : super._();

  factory _$_TemperatureDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureDetailModelFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: 'temp')
  final double? temperature;
  @override
  @JsonKey(defaultValue: 0, name: 'feels_like')
  final double? feelsLike;
  @override
  @JsonKey(defaultValue: 0, name: 'temp_min')
  final double? minimumTemperature;
  @override
  @JsonKey(defaultValue: 0, name: 'temp_max')
  final double? maximumTemperature;
  @override
  @JsonKey(defaultValue: 0, name: 'pressure')
  final int? pressure;
  @override
  @JsonKey(defaultValue: 0, name: 'humidity')
  final int? humidity;
  @override
  @JsonKey(defaultValue: 0, name: 'sea_level')
  final int? seaLevel;
  @override
  @JsonKey(defaultValue: 0, name: 'grnd_level')
  final int? groundLevel;

  @override
  String toString() {
    return 'TemperatureDetailModel(temperature: $temperature, feelsLike: $feelsLike, minimumTemperature: $minimumTemperature, maximumTemperature: $maximumTemperature, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, groundLevel: $groundLevel)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemperatureDetailModelCopyWith<_$_TemperatureDetailModel> get copyWith =>
      __$$_TemperatureDetailModelCopyWithImpl<_$_TemperatureDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureDetailModelToJson(
      this,
    );
  }
}

abstract class _TemperatureDetailModel extends TemperatureDetailModel {
  const factory _TemperatureDetailModel(
      {@JsonKey(defaultValue: 0, name: 'temp') final double? temperature,
      @JsonKey(defaultValue: 0, name: 'feels_like') final double? feelsLike,
      @JsonKey(defaultValue: 0, name: 'temp_min')
      final double? minimumTemperature,
      @JsonKey(defaultValue: 0, name: 'temp_max')
      final double? maximumTemperature,
      @JsonKey(defaultValue: 0, name: 'pressure') final int? pressure,
      @JsonKey(defaultValue: 0, name: 'humidity') final int? humidity,
      @JsonKey(defaultValue: 0, name: 'sea_level') final int? seaLevel,
      @JsonKey(defaultValue: 0, name: 'grnd_level')
      final int? groundLevel}) = _$_TemperatureDetailModel;
  const _TemperatureDetailModel._() : super._();

  factory _TemperatureDetailModel.fromJson(Map<String, dynamic> json) =
      _$_TemperatureDetailModel.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: 'temp')
  double? get temperature;
  @override
  @JsonKey(defaultValue: 0, name: 'feels_like')
  double? get feelsLike;
  @override
  @JsonKey(defaultValue: 0, name: 'temp_min')
  double? get minimumTemperature;
  @override
  @JsonKey(defaultValue: 0, name: 'temp_max')
  double? get maximumTemperature;
  @override
  @JsonKey(defaultValue: 0, name: 'pressure')
  int? get pressure;
  @override
  @JsonKey(defaultValue: 0, name: 'humidity')
  int? get humidity;
  @override
  @JsonKey(defaultValue: 0, name: 'sea_level')
  int? get seaLevel;
  @override
  @JsonKey(defaultValue: 0, name: 'grnd_level')
  int? get groundLevel;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureDetailModelCopyWith<_$_TemperatureDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
