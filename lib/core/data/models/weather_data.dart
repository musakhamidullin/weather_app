import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main_info.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
class WeatherDataModel with _$WeatherDataModel {
  const factory WeatherDataModel({
    @JsonKey(name: "coord") @Default(WeatherDataModel.defCoord) Coord coord,
    @JsonKey(name: "weather") @Default([]) List<Weather> weather,
    @JsonKey(name: "base") @Default('') String base,
    @JsonKey(name: "main") @Default(WeatherDataModel.defMain) MainInfo main,
    @JsonKey(name: "visibility") @Default(0) int visibility,
    @JsonKey(name: "wind") @Default(WeatherDataModel.defWind) Wind wind,
    @JsonKey(name: "clouds") @Default(WeatherDataModel.defClouds) Clouds clouds,
    @JsonKey(name: "dt") @Default(0) int dt,
    @JsonKey(name: "sys") @Default(WeatherDataModel.defSys) Sys sys,
    @JsonKey(name: "timezone") @Default(0) int timezone,
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "name") @Default('') String name,
    @JsonKey(name: "cod") @Default(0) int cod,
  }) = _WeatherDataModel;

  static const defMain = MainInfo();

  static const defWind = Wind();

  static const defClouds = Clouds();

  static const defSys = Sys();

  static const defCoord = Coord();

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataModelFromJson(json);
}
