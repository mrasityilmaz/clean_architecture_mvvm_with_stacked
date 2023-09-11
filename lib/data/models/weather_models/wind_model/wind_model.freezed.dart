// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WindDetail _$WindDetailFromJson(Map<String, dynamic> json) {
  return _WindDetail.fromJson(json);
}

/// @nodoc
mixin _$WindDetail {
  @JsonKey(name: 'speed', defaultValue: 0)
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'deg', defaultValue: 0)
  int? get windDegree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindDetailCopyWith<WindDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindDetailCopyWith<$Res> {
  factory $WindDetailCopyWith(
          WindDetail value, $Res Function(WindDetail) then) =
      _$WindDetailCopyWithImpl<$Res, WindDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'speed', defaultValue: 0) double? windSpeed,
      @JsonKey(name: 'deg', defaultValue: 0) int? windDegree});
}

/// @nodoc
class _$WindDetailCopyWithImpl<$Res, $Val extends WindDetail>
    implements $WindDetailCopyWith<$Res> {
  _$WindDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
  }) {
    return _then(_value.copyWith(
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WindDetailCopyWith<$Res>
    implements $WindDetailCopyWith<$Res> {
  factory _$$_WindDetailCopyWith(
          _$_WindDetail value, $Res Function(_$_WindDetail) then) =
      __$$_WindDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'speed', defaultValue: 0) double? windSpeed,
      @JsonKey(name: 'deg', defaultValue: 0) int? windDegree});
}

/// @nodoc
class __$$_WindDetailCopyWithImpl<$Res>
    extends _$WindDetailCopyWithImpl<$Res, _$_WindDetail>
    implements _$$_WindDetailCopyWith<$Res> {
  __$$_WindDetailCopyWithImpl(
      _$_WindDetail _value, $Res Function(_$_WindDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
  }) {
    return _then(_$_WindDetail(
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WindDetail extends _WindDetail {
  const _$_WindDetail(
      {@JsonKey(name: 'speed', defaultValue: 0) this.windSpeed,
      @JsonKey(name: 'deg', defaultValue: 0) this.windDegree})
      : super._();

  factory _$_WindDetail.fromJson(Map<String, dynamic> json) =>
      _$$_WindDetailFromJson(json);

  @override
  @JsonKey(name: 'speed', defaultValue: 0)
  final double? windSpeed;
  @override
  @JsonKey(name: 'deg', defaultValue: 0)
  final int? windDegree;

  @override
  String toString() {
    return 'WindDetail(windSpeed: $windSpeed, windDegree: $windDegree)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WindDetailCopyWith<_$_WindDetail> get copyWith =>
      __$$_WindDetailCopyWithImpl<_$_WindDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindDetailToJson(
      this,
    );
  }
}

abstract class _WindDetail extends WindDetail {
  const factory _WindDetail(
          {@JsonKey(name: 'speed', defaultValue: 0) final double? windSpeed,
          @JsonKey(name: 'deg', defaultValue: 0) final int? windDegree}) =
      _$_WindDetail;
  const _WindDetail._() : super._();

  factory _WindDetail.fromJson(Map<String, dynamic> json) =
      _$_WindDetail.fromJson;

  @override
  @JsonKey(name: 'speed', defaultValue: 0)
  double? get windSpeed;
  @override
  @JsonKey(name: 'deg', defaultValue: 0)
  int? get windDegree;
  @override
  @JsonKey(ignore: true)
  _$$_WindDetailCopyWith<_$_WindDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
