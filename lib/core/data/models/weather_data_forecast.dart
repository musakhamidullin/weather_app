import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';
import 'forecast.dart';

part 'weather_data_forecast.freezed.dart';
part 'weather_data_forecast.g.dart';

@freezed
class WeatherDataForecast with _$WeatherDataForecast {
  const factory WeatherDataForecast({
    @JsonKey(name: 'cod') @Default('') String cod,
    @JsonKey(name: 'message')  @Default(0) int message,
    @JsonKey(name: 'cnt')  @Default(0) int cnt,
    @JsonKey(name: 'list')  @Default([]) List<ForecastList> list,
    @JsonKey(name: 'city') @Default(WeatherDataForecast.defCity) City city,
  }) = _WeatherdataForecast;

  static const defCity = City();

  factory WeatherDataForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataForecastFromJson(json);
}
