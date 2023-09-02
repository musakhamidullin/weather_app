import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'main_info.dart';
import 'rain.dart';
import 'sys_forecast.dart';
import 'weather.dart';
import 'wind.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class ForecastList with _$ForecastList {
  const factory ForecastList({
    @JsonKey(name: 'dt') @Default(0) int dt,
    @JsonKey(name: 'main') @Default(ForecastList.defMain) MainInfo main,
    @JsonKey(name: 'weather') @Default([]) List<Weather> weather,
    @JsonKey(name: 'clouds') @Default(ForecastList.defClouds) Clouds clouds,
    @JsonKey(name: 'wind') @Default(ForecastList.defWind) Wind wind,
    @JsonKey(name: 'visibility') @Default(0) int visibility,
    @JsonKey(name: 'pop') @Default(0.0) double pop,
    @JsonKey(name: 'sys') @Default(ForecastList.defSysforecast) SysForecast sys,
    @JsonKey(name: 'dt_txt') @Default('') String dtTxt,
    @JsonKey(name: 'rain') @Default(ForecastList.defRain) Rain rain,
  }) = _ForecastList;

  static const defMain = MainInfo();

  static const defClouds = Clouds();

  static const defWind = Wind();

  static const defSysforecast = SysForecast();

  static const defRain = Rain();

  factory ForecastList.fromJson(Map<String, dynamic> json) =>
      _$ForecastListFromJson(json);
}
