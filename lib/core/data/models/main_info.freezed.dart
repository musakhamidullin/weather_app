// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainInfo _$MainInfoFromJson(Map<String, dynamic> json) {
  return _MainInfo.fromJson(json);
}

/// @nodoc
mixin _$MainInfo {
  @JsonKey(name: "temp")
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like")
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_min")
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_max")
  double get tempMax => throw _privateConstructorUsedError;
  @JsonKey(name: "pressure")
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: "humidity")
  @HumidityConverter()
  (int, String) get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainInfoCopyWith<MainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainInfoCopyWith<$Res> {
  factory $MainInfoCopyWith(MainInfo value, $Res Function(MainInfo) then) =
      _$MainInfoCopyWithImpl<$Res, MainInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "temp") double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      @JsonKey(name: "pressure") int pressure,
      @JsonKey(name: "humidity") @HumidityConverter() (int, String) humidity});
}

/// @nodoc
class _$MainInfoCopyWithImpl<$Res, $Val extends MainInfo>
    implements $MainInfoCopyWith<$Res> {
  _$MainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as (int, String),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainInfoCopyWith<$Res> implements $MainInfoCopyWith<$Res> {
  factory _$$_MainInfoCopyWith(
          _$_MainInfo value, $Res Function(_$_MainInfo) then) =
      __$$_MainInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "temp") double temp,
      @JsonKey(name: "feels_like") double feelsLike,
      @JsonKey(name: "temp_min") double tempMin,
      @JsonKey(name: "temp_max") double tempMax,
      @JsonKey(name: "pressure") int pressure,
      @JsonKey(name: "humidity") @HumidityConverter() (int, String) humidity});
}

/// @nodoc
class __$$_MainInfoCopyWithImpl<$Res>
    extends _$MainInfoCopyWithImpl<$Res, _$_MainInfo>
    implements _$$_MainInfoCopyWith<$Res> {
  __$$_MainInfoCopyWithImpl(
      _$_MainInfo _value, $Res Function(_$_MainInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$_MainInfo(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as (int, String),
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainInfo implements _MainInfo {
  const _$_MainInfo(
      {@JsonKey(name: "temp") this.temp = 0.0,
      @JsonKey(name: "feels_like") this.feelsLike = 0.0,
      @JsonKey(name: "temp_min") this.tempMin = 0.0,
      @JsonKey(name: "temp_max") this.tempMax = 0.0,
      @JsonKey(name: "pressure") this.pressure = 0,
      @JsonKey(name: "humidity")
      @HumidityConverter()
      this.humidity = const (0, '')});

  factory _$_MainInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MainInfoFromJson(json);

  @override
  @JsonKey(name: "temp")
  final double temp;
  @override
  @JsonKey(name: "feels_like")
  final double feelsLike;
  @override
  @JsonKey(name: "temp_min")
  final double tempMin;
  @override
  @JsonKey(name: "temp_max")
  final double tempMax;
  @override
  @JsonKey(name: "pressure")
  final int pressure;
  @override
  @JsonKey(name: "humidity")
  @HumidityConverter()
  final (int, String) humidity;

  @override
  String toString() {
    return 'MainInfo(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainInfo &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temp, feelsLike, tempMin, tempMax, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainInfoCopyWith<_$_MainInfo> get copyWith =>
      __$$_MainInfoCopyWithImpl<_$_MainInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainInfoToJson(
      this,
    );
  }
}

abstract class _MainInfo implements MainInfo {
  const factory _MainInfo(
      {@JsonKey(name: "temp") final double temp,
      @JsonKey(name: "feels_like") final double feelsLike,
      @JsonKey(name: "temp_min") final double tempMin,
      @JsonKey(name: "temp_max") final double tempMax,
      @JsonKey(name: "pressure") final int pressure,
      @JsonKey(name: "humidity")
      @HumidityConverter()
      final (int, String) humidity}) = _$_MainInfo;

  factory _MainInfo.fromJson(Map<String, dynamic> json) = _$_MainInfo.fromJson;

  @override
  @JsonKey(name: "temp")
  double get temp;
  @override
  @JsonKey(name: "feels_like")
  double get feelsLike;
  @override
  @JsonKey(name: "temp_min")
  double get tempMin;
  @override
  @JsonKey(name: "temp_max")
  double get tempMax;
  @override
  @JsonKey(name: "pressure")
  int get pressure;
  @override
  @JsonKey(name: "humidity")
  @HumidityConverter()
  (int, String) get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_MainInfoCopyWith<_$_MainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
