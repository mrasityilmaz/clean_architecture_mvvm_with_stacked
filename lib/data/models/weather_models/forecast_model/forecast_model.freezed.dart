// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModel {
  @JsonKey(name: 'weather')
  List<WeatherDetail> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  TemperatureDetailModel get temperatureDetailModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  WindDetail get windDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  Clouds get cloudDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
  DateTime get calculatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res, WeatherForecastModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<WeatherDetail> weather,
      @JsonKey(name: 'main') TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') WindDetail windDetail,
      @JsonKey(name: 'clouds') Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      DateTime calculatedAt});

  $TemperatureDetailModelCopyWith<$Res> get temperatureDetailModel;
  $WindDetailCopyWith<$Res> get windDetail;
  $CloudsCopyWith<$Res> get cloudDetail;
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res,
        $Val extends WeatherForecastModel>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? temperatureDetailModel = null,
    Object? windDetail = null,
    Object? cloudDetail = null,
    Object? calculatedAt = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetail>,
      temperatureDetailModel: null == temperatureDetailModel
          ? _value.temperatureDetailModel
          : temperatureDetailModel // ignore: cast_nullable_to_non_nullable
              as TemperatureDetailModel,
      windDetail: null == windDetail
          ? _value.windDetail
          : windDetail // ignore: cast_nullable_to_non_nullable
              as WindDetail,
      cloudDetail: null == cloudDetail
          ? _value.cloudDetail
          : cloudDetail // ignore: cast_nullable_to_non_nullable
              as Clouds,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureDetailModelCopyWith<$Res> get temperatureDetailModel {
    return $TemperatureDetailModelCopyWith<$Res>(_value.temperatureDetailModel,
        (value) {
      return _then(_value.copyWith(temperatureDetailModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDetailCopyWith<$Res> get windDetail {
    return $WindDetailCopyWith<$Res>(_value.windDetail, (value) {
      return _then(_value.copyWith(windDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get cloudDetail {
    return $CloudsCopyWith<$Res>(_value.cloudDetail, (value) {
      return _then(_value.copyWith(cloudDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherForecastModelCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$$_WeatherForecastModelCopyWith(_$_WeatherForecastModel value,
          $Res Function(_$_WeatherForecastModel) then) =
      __$$_WeatherForecastModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weather') List<WeatherDetail> weather,
      @JsonKey(name: 'main') TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') WindDetail windDetail,
      @JsonKey(name: 'clouds') Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      DateTime calculatedAt});

  @override
  $TemperatureDetailModelCopyWith<$Res> get temperatureDetailModel;
  @override
  $WindDetailCopyWith<$Res> get windDetail;
  @override
  $CloudsCopyWith<$Res> get cloudDetail;
}

/// @nodoc
class __$$_WeatherForecastModelCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res, _$_WeatherForecastModel>
    implements _$$_WeatherForecastModelCopyWith<$Res> {
  __$$_WeatherForecastModelCopyWithImpl(_$_WeatherForecastModel _value,
      $Res Function(_$_WeatherForecastModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? temperatureDetailModel = null,
    Object? windDetail = null,
    Object? cloudDetail = null,
    Object? calculatedAt = null,
  }) {
    return _then(_$_WeatherForecastModel(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetail>,
      temperatureDetailModel: null == temperatureDetailModel
          ? _value.temperatureDetailModel
          : temperatureDetailModel // ignore: cast_nullable_to_non_nullable
              as TemperatureDetailModel,
      windDetail: null == windDetail
          ? _value.windDetail
          : windDetail // ignore: cast_nullable_to_non_nullable
              as WindDetail,
      cloudDetail: null == cloudDetail
          ? _value.cloudDetail
          : cloudDetail // ignore: cast_nullable_to_non_nullable
              as Clouds,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecastModel extends _WeatherForecastModel {
  const _$_WeatherForecastModel(
      {@JsonKey(name: 'weather') required this.weather,
      @JsonKey(name: 'main') required this.temperatureDetailModel,
      @JsonKey(name: 'wind') required this.windDetail,
      @JsonKey(name: 'clouds') required this.cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      required this.calculatedAt})
      : super._();

  factory _$_WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherForecastModelFromJson(json);

  @override
  @JsonKey(name: 'weather')
  final List<WeatherDetail> weather;
  @override
  @JsonKey(name: 'main')
  final TemperatureDetailModel temperatureDetailModel;
  @override
  @JsonKey(name: 'wind')
  final WindDetail windDetail;
  @override
  @JsonKey(name: 'clouds')
  final Clouds cloudDetail;
  @override
  @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
  final DateTime calculatedAt;

  @override
  String toString() {
    return 'WeatherForecastModel(weather: $weather, temperatureDetailModel: $temperatureDetailModel, windDetail: $windDetail, cloudDetail: $cloudDetail, calculatedAt: $calculatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherForecastModelCopyWith<_$_WeatherForecastModel> get copyWith =>
      __$$_WeatherForecastModelCopyWithImpl<_$_WeatherForecastModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastModelToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModel extends WeatherForecastModel {
  const factory _WeatherForecastModel(
      {@JsonKey(name: 'weather') required final List<WeatherDetail> weather,
      @JsonKey(name: 'main')
      required final TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') required final WindDetail windDetail,
      @JsonKey(name: 'clouds') required final Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      required final DateTime calculatedAt}) = _$_WeatherForecastModel;
  const _WeatherForecastModel._() : super._();

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecastModel.fromJson;

  @override
  @JsonKey(name: 'weather')
  List<WeatherDetail> get weather;
  @override
  @JsonKey(name: 'main')
  TemperatureDetailModel get temperatureDetailModel;
  @override
  @JsonKey(name: 'wind')
  WindDetail get windDetail;
  @override
  @JsonKey(name: 'clouds')
  Clouds get cloudDetail;
  @override
  @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
  DateTime get calculatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastModelCopyWith<_$_WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
