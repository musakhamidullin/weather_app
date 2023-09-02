import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_info.freezed.dart';
part 'main_info.g.dart';

@freezed
class MainInfo with _$MainInfo {
  const factory MainInfo({
    @JsonKey(name: "temp") @Default(0.0) double temp,
    @JsonKey(name: "feels_like") @Default(0.0) double feelsLike,
    @JsonKey(name: "temp_min") @Default(0.0) double tempMin,
    @JsonKey(name: "temp_max") @Default(0.0) double tempMax,
    @JsonKey(name: "pressure") @Default(0) int pressure,
    @JsonKey(name: "humidity") @Default((0,'')) @HumidityConverter() (int, String) humidity,
  }) = _MainInfo;
  factory MainInfo.fromJson(Map<String, dynamic> json) =>
      _$MainInfoFromJson(json);
}

class HumidityConverter implements JsonConverter<(int, String), int>{

  const HumidityConverter();

  @override
  (int, String) fromJson(int value) {

    String humidity = '';

    if(35 <= value && value < 40){
      humidity = 'Сухо';
    } else if (value >= 40 && value < 60){
      humidity = 'Оптимальная влажность';
    } else if (value >= 60){
      humidity = 'Высокая влажность';
    }

    return (value, humidity);
  }

  @Deprecated('Not use!')
  @override
  int toJson((int, String) object) => 0;
}
