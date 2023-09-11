// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clouds _$CloudsFromJson(Map<String, dynamic> json) {
  return _Clouds.fromJson(json);
}

/// @nodoc
mixin _$Clouds {
  @JsonKey(name: 'all', defaultValue: 0)
  int? get cloudiness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudsCopyWith<Clouds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsCopyWith<$Res> {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) then) =
      _$CloudsCopyWithImpl<$Res, Clouds>;
  @useResult
  $Res call({@JsonKey(name: 'all', defaultValue: 0) int? cloudiness});
}

/// @nodoc
class _$CloudsCopyWithImpl<$Res, $Val extends Clouds>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cloudiness = freezed,
  }) {
    return _then(_value.copyWith(
      cloudiness: freezed == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CloudsCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$$_CloudsCopyWith(_$_Clouds value, $Res Function(_$_Clouds) then) =
      __$$_CloudsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'all', defaultValue: 0) int? cloudiness});
}

/// @nodoc
class __$$_CloudsCopyWithImpl<$Res>
    extends _$CloudsCopyWithImpl<$Res, _$_Clouds>
    implements _$$_CloudsCopyWith<$Res> {
  __$$_CloudsCopyWithImpl(_$_Clouds _value, $Res Function(_$_Clouds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cloudiness = freezed,
  }) {
    return _then(_$_Clouds(
      cloudiness: freezed == cloudiness
          ? _value.cloudiness
          : cloudiness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Clouds extends _Clouds {
  const _$_Clouds({@JsonKey(name: 'all', defaultValue: 0) this.cloudiness})
      : super._();

  factory _$_Clouds.fromJson(Map<String, dynamic> json) =>
      _$$_CloudsFromJson(json);

  @override
  @JsonKey(name: 'all', defaultValue: 0)
  final int? cloudiness;

  @override
  String toString() {
    return 'Clouds(cloudiness: $cloudiness)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloudsCopyWith<_$_Clouds> get copyWith =>
      __$$_CloudsCopyWithImpl<_$_Clouds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudsToJson(
      this,
    );
  }
}

abstract class _Clouds extends Clouds {
  const factory _Clouds(
          {@JsonKey(name: 'all', defaultValue: 0) final int? cloudiness}) =
      _$_Clouds;
  const _Clouds._() : super._();

  factory _Clouds.fromJson(Map<String, dynamic> json) = _$_Clouds.fromJson;

  @override
  @JsonKey(name: 'all', defaultValue: 0)
  int? get cloudiness;
  @override
  @JsonKey(ignore: true)
  _$$_CloudsCopyWith<_$_Clouds> get copyWith =>
      throw _privateConstructorUsedError;
}
