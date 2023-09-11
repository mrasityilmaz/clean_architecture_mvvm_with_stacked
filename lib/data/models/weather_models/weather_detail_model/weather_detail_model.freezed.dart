// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) {
  return _WeatherDetail.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetail {
  @JsonKey(
      name: 'icon',
      fromJson: _wheatherTypeEnumFromJson,
      defaultValue: WeatherTypeEnum.clearSkyDay)
  WeatherTypeEnum get icon => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get bgPath => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailCopyWith<WeatherDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailCopyWith<$Res> {
  factory $WeatherDetailCopyWith(
          WeatherDetail value, $Res Function(WeatherDetail) then) =
      _$WeatherDetailCopyWithImpl<$Res, WeatherDetail>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'icon',
          fromJson: _wheatherTypeEnumFromJson,
          defaultValue: WeatherTypeEnum.clearSkyDay)
      WeatherTypeEnum icon,
      @JsonKey(includeFromJson: false, includeToJson: false) String bgPath,
      int? id,
      String? main,
      String? description});
}

/// @nodoc
class _$WeatherDetailCopyWithImpl<$Res, $Val extends WeatherDetail>
    implements $WeatherDetailCopyWith<$Res> {
  _$WeatherDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? bgPath = null,
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherTypeEnum,
      bgPath: null == bgPath
          ? _value.bgPath
          : bgPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDetailCopyWith<$Res>
    implements $WeatherDetailCopyWith<$Res> {
  factory _$$_WeatherDetailCopyWith(
          _$_WeatherDetail value, $Res Function(_$_WeatherDetail) then) =
      __$$_WeatherDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'icon',
          fromJson: _wheatherTypeEnumFromJson,
          defaultValue: WeatherTypeEnum.clearSkyDay)
      WeatherTypeEnum icon,
      @JsonKey(includeFromJson: false, includeToJson: false) String bgPath,
      int? id,
      String? main,
      String? description});
}

/// @nodoc
class __$$_WeatherDetailCopyWithImpl<$Res>
    extends _$WeatherDetailCopyWithImpl<$Res, _$_WeatherDetail>
    implements _$$_WeatherDetailCopyWith<$Res> {
  __$$_WeatherDetailCopyWithImpl(
      _$_WeatherDetail _value, $Res Function(_$_WeatherDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? bgPath = null,
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_WeatherDetail(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherTypeEnum,
      bgPath: null == bgPath
          ? _value.bgPath
          : bgPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDetail extends _WeatherDetail {
  const _$_WeatherDetail(
      {@JsonKey(
          name: 'icon',
          fromJson: _wheatherTypeEnumFromJson,
          defaultValue: WeatherTypeEnum.clearSkyDay)
      required this.icon,
      @JsonKey(includeFromJson: false, includeToJson: false) this.bgPath = '',
      this.id,
      this.main,
      this.description})
      : super._();

  factory _$_WeatherDetail.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDetailFromJson(json);

  @override
  @JsonKey(
      name: 'icon',
      fromJson: _wheatherTypeEnumFromJson,
      defaultValue: WeatherTypeEnum.clearSkyDay)
  final WeatherTypeEnum icon;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String bgPath;
  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;

  @override
  String toString() {
    return 'WeatherDetail(icon: $icon, bgPath: $bgPath, id: $id, main: $main, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDetailCopyWith<_$_WeatherDetail> get copyWith =>
      __$$_WeatherDetailCopyWithImpl<_$_WeatherDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDetailToJson(
      this,
    );
  }
}

abstract class _WeatherDetail extends WeatherDetail {
  const factory _WeatherDetail(
      {@JsonKey(
          name: 'icon',
          fromJson: _wheatherTypeEnumFromJson,
          defaultValue: WeatherTypeEnum.clearSkyDay)
      required final WeatherTypeEnum icon,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String bgPath,
      final int? id,
      final String? main,
      final String? description}) = _$_WeatherDetail;
  const _WeatherDetail._() : super._();

  factory _WeatherDetail.fromJson(Map<String, dynamic> json) =
      _$_WeatherDetail.fromJson;

  @override
  @JsonKey(
      name: 'icon',
      fromJson: _wheatherTypeEnumFromJson,
      defaultValue: WeatherTypeEnum.clearSkyDay)
  WeatherTypeEnum get icon;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get bgPath;
  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailCopyWith<_$_WeatherDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
