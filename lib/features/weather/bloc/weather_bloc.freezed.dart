// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  String get content => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  WeatherDataModel get weatherDataModel => throw _privateConstructorUsedError;
  WeatherDataForecast get forecastList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {String content,
      Status status,
      WeatherDataModel weatherDataModel,
      WeatherDataForecast forecastList});

  $WeatherDataModelCopyWith<$Res> get weatherDataModel;
  $WeatherDataForecastCopyWith<$Res> get forecastList;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
    Object? weatherDataModel = null,
    Object? forecastList = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      weatherDataModel: null == weatherDataModel
          ? _value.weatherDataModel
          : weatherDataModel // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel,
      forecastList: null == forecastList
          ? _value.forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as WeatherDataForecast,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataModelCopyWith<$Res> get weatherDataModel {
    return $WeatherDataModelCopyWith<$Res>(_value.weatherDataModel, (value) {
      return _then(_value.copyWith(weatherDataModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataForecastCopyWith<$Res> get forecastList {
    return $WeatherDataForecastCopyWith<$Res>(_value.forecastList, (value) {
      return _then(_value.copyWith(forecastList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      Status status,
      WeatherDataModel weatherDataModel,
      WeatherDataForecast forecastList});

  @override
  $WeatherDataModelCopyWith<$Res> get weatherDataModel;
  @override
  $WeatherDataForecastCopyWith<$Res> get forecastList;
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
    Object? weatherDataModel = null,
    Object? forecastList = null,
  }) {
    return _then(_$_WeatherState(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      weatherDataModel: null == weatherDataModel
          ? _value.weatherDataModel
          : weatherDataModel // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel,
      forecastList: null == forecastList
          ? _value.forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as WeatherDataForecast,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.content = '',
      this.status = Status.unKnown,
      this.weatherDataModel = WeatherState.defWeatherModel,
      this.forecastList = WeatherState.defForecast});

  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final WeatherDataModel weatherDataModel;
  @override
  @JsonKey()
  final WeatherDataForecast forecastList;

  @override
  String toString() {
    return 'WeatherState(content: $content, status: $status, weatherDataModel: $weatherDataModel, forecastList: $forecastList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.weatherDataModel, weatherDataModel) ||
                other.weatherDataModel == weatherDataModel) &&
            (identical(other.forecastList, forecastList) ||
                other.forecastList == forecastList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, status, weatherDataModel, forecastList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final String content,
      final Status status,
      final WeatherDataModel weatherDataModel,
      final WeatherDataForecast forecastList}) = _$_WeatherState;

  @override
  String get content;
  @override
  Status get status;
  @override
  WeatherDataModel get weatherDataModel;
  @override
  WeatherDataForecast get forecastList;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherEvent {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? onSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onSend value) onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onSend value)? onSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onSend value)? onSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_onSendCopyWith<$Res> implements $WeatherEventCopyWith<$Res> {
  factory _$$_onSendCopyWith(_$_onSend value, $Res Function(_$_onSend) then) =
      __$$_onSendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_onSendCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_onSend>
    implements _$$_onSendCopyWith<$Res> {
  __$$_onSendCopyWithImpl(_$_onSend _value, $Res Function(_$_onSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_onSend(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_onSend implements _onSend {
  const _$_onSend({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'WeatherEvent.onSend(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_onSend &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_onSendCopyWith<_$_onSend> get copyWith =>
      __$$_onSendCopyWithImpl<_$_onSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) onSend,
  }) {
    return onSend(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? onSend,
  }) {
    return onSend?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? onSend,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onSend value) onSend,
  }) {
    return onSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onSend value)? onSend,
  }) {
    return onSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onSend value)? onSend,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class _onSend implements WeatherEvent {
  const factory _onSend(
      {required final double latitude,
      required final double longitude}) = _$_onSend;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_onSendCopyWith<_$_onSend> get copyWith =>
      throw _privateConstructorUsedError;
}
