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
    @JsonKey(name: 'coord') Coord? coord,
    @JsonKey(name: 'weather') List<Weather>? weather,
    @JsonKey(name: 'base') String? base,
    @JsonKey(name: 'main') MainInfo? main,
    @JsonKey(name: 'visibility') int? visibility,
    @JsonKey(name: 'wind') Wind? wind,
    @JsonKey(name: 'clouds') Clouds? clouds,
    @JsonKey(name: 'dt') int? dt,
    @JsonKey(name: 'sys') Sys? sys,
    @JsonKey(name: 'timezone') int? timezone,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(ignore: true) int? cod,
  }) = _WeatherDataModel;

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataModelFromJson(json);
}
