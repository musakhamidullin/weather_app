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
    @JsonKey(name: 'dt') int? dt,
    @JsonKey(name: 'main') MainInfo? main,
    @JsonKey(name: 'weather') List<Weather>? weather,
    @JsonKey(name: 'clouds') Clouds? clouds,
    @JsonKey(name: 'wind') Wind? wind,
    @JsonKey(name: 'visibility') int? visibility,
    @JsonKey(name: 'pop') double? pop,
    @JsonKey(name: 'sys') SysForecast? sys,
    @JsonKey(name: 'dt_txt') String? dtTxt,
    @JsonKey(name: 'rain') Rain? rain,
  }) = _ForecastList;

  factory ForecastList.fromJson(Map<String, dynamic> json) => _$ForecastListFromJson(json);

}
