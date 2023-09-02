import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'main') @Default(('','')) @MainConverter() (String, String) main,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'icon') @Default('') String icon,
  }) = _Weather;
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

class MainConverter implements JsonConverter<(String, String), String> {
  const MainConverter();

  @override
  (String, String) fromJson(String json) {
    return switch (json) {
      'Clouds' => ('assets/images/sun.png', 'assets/icons/CloudSun.svg'),
      'Clear' => ('assets/images/sun.png', 'assets/icons/CloudSun.svg'),
      'Snow' => ('assets/images/snow.png', 'assets/icons/CloudSnow.svg'),
      'Rain' => ('assets/images/small_rain.png', 'assets/icons/CloudRain.svg'),
      'Drizzle' => ('assets/images/big_rain.png', 'assets/icons/CloudRain.svg'),
      'Thunderstorm' => (
          'assets/images/lightning_rain.png',
          'assets/icons/CloudLightning.svg'
        ),
      String() => ('', ''),
    };
  }

  @Deprecated('Not use!')
  @override
  String toJson((String, String) object) => ('');
}
