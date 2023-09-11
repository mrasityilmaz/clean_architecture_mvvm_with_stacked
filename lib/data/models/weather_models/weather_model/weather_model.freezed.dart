// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: 'coord')
  Coord get coordinateDetail => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'sys')
  CountryDetail get countryDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: 'Unknown City')
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone', defaultValue: 0)
  int get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') Coord coordinateDetail,
      @JsonKey(name: 'weather') List<WeatherDetail> weather,
      @JsonKey(name: 'main') TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') WindDetail windDetail,
      @JsonKey(name: 'clouds') Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      DateTime calculatedAt,
      @JsonKey(name: 'sys') CountryDetail countryDetail,
      @JsonKey(name: 'name', defaultValue: 'Unknown City') String cityName,
      @JsonKey(name: 'timezone', defaultValue: 0) int timezone});

  $CoordCopyWith<$Res> get coordinateDetail;
  $TemperatureDetailModelCopyWith<$Res> get temperatureDetailModel;
  $WindDetailCopyWith<$Res> get windDetail;
  $CloudsCopyWith<$Res> get cloudDetail;
  $CountryDetailCopyWith<$Res> get countryDetail;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinateDetail = null,
    Object? weather = null,
    Object? temperatureDetailModel = null,
    Object? windDetail = null,
    Object? cloudDetail = null,
    Object? calculatedAt = null,
    Object? countryDetail = null,
    Object? cityName = null,
    Object? timezone = null,
  }) {
    return _then(_value.copyWith(
      coordinateDetail: null == coordinateDetail
          ? _value.coordinateDetail
          : coordinateDetail // ignore: cast_nullable_to_non_nullable
              as Coord,
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
      countryDetail: null == countryDetail
          ? _value.countryDetail
          : countryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetail,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res> get coordinateDetail {
    return $CoordCopyWith<$Res>(_value.coordinateDetail, (value) {
      return _then(_value.copyWith(coordinateDetail: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $CountryDetailCopyWith<$Res> get countryDetail {
    return $CountryDetailCopyWith<$Res>(_value.countryDetail, (value) {
      return _then(_value.copyWith(countryDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') Coord coordinateDetail,
      @JsonKey(name: 'weather') List<WeatherDetail> weather,
      @JsonKey(name: 'main') TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') WindDetail windDetail,
      @JsonKey(name: 'clouds') Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      DateTime calculatedAt,
      @JsonKey(name: 'sys') CountryDetail countryDetail,
      @JsonKey(name: 'name', defaultValue: 'Unknown City') String cityName,
      @JsonKey(name: 'timezone', defaultValue: 0) int timezone});

  @override
  $CoordCopyWith<$Res> get coordinateDetail;
  @override
  $TemperatureDetailModelCopyWith<$Res> get temperatureDetailModel;
  @override
  $WindDetailCopyWith<$Res> get windDetail;
  @override
  $CloudsCopyWith<$Res> get cloudDetail;
  @override
  $CountryDetailCopyWith<$Res> get countryDetail;
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinateDetail = null,
    Object? weather = null,
    Object? temperatureDetailModel = null,
    Object? windDetail = null,
    Object? cloudDetail = null,
    Object? calculatedAt = null,
    Object? countryDetail = null,
    Object? cityName = null,
    Object? timezone = null,
  }) {
    return _then(_$_WeatherModel(
      coordinateDetail: null == coordinateDetail
          ? _value.coordinateDetail
          : coordinateDetail // ignore: cast_nullable_to_non_nullable
              as Coord,
      weather: null == weather
          ? _value._weather
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
      countryDetail: null == countryDetail
          ? _value.countryDetail
          : countryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetail,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel extends _WeatherModel {
  const _$_WeatherModel(
      {@JsonKey(name: 'coord') required this.coordinateDetail,
      @JsonKey(name: 'weather') required final List<WeatherDetail> weather,
      @JsonKey(name: 'main') required this.temperatureDetailModel,
      @JsonKey(name: 'wind') required this.windDetail,
      @JsonKey(name: 'clouds') required this.cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      required this.calculatedAt,
      @JsonKey(name: 'sys') required this.countryDetail,
      @JsonKey(name: 'name', defaultValue: 'Unknown City')
      required this.cityName,
      @JsonKey(name: 'timezone', defaultValue: 0) required this.timezone})
      : _weather = weather,
        super._();

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  @JsonKey(name: 'coord')
  final Coord coordinateDetail;
  final List<WeatherDetail> _weather;
  @override
  @JsonKey(name: 'weather')
  List<WeatherDetail> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

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
  @JsonKey(name: 'sys')
  final CountryDetail countryDetail;
  @override
  @JsonKey(name: 'name', defaultValue: 'Unknown City')
  final String cityName;
  @override
  @JsonKey(name: 'timezone', defaultValue: 0)
  final int timezone;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(
      {@JsonKey(name: 'coord') required final Coord coordinateDetail,
      @JsonKey(name: 'weather') required final List<WeatherDetail> weather,
      @JsonKey(name: 'main')
      required final TemperatureDetailModel temperatureDetailModel,
      @JsonKey(name: 'wind') required final WindDetail windDetail,
      @JsonKey(name: 'clouds') required final Clouds cloudDetail,
      @JsonKey(name: 'dt', fromJson: _calculatedAtFromJson)
      required final DateTime calculatedAt,
      @JsonKey(name: 'sys') required final CountryDetail countryDetail,
      @JsonKey(name: 'name', defaultValue: 'Unknown City')
      required final String cityName,
      @JsonKey(name: 'timezone', defaultValue: 0)
      required final int timezone}) = _$_WeatherModel;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  @JsonKey(name: 'coord')
  Coord get coordinateDetail;
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
  @JsonKey(name: 'sys')
  CountryDetail get countryDetail;
  @override
  @JsonKey(name: 'name', defaultValue: 'Unknown City')
  String get cityName;
  @override
  @JsonKey(name: 'timezone', defaultValue: 0)
  int get timezone;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
