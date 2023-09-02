import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  const factory Wind({
    @JsonKey(name: 'speed') @Default(0.0) double speed,
    @JsonKey(name: 'deg') @Default('') @DegConverter() String windDirection,
    @JsonKey(name: 'gust') @Default(0.0) double gust,
  }) = _Wind;
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

class DegConverter implements JsonConverter<String, int> {
  const DegConverter();

  @override
  String fromJson(int value) {
    String windDirection = '';

    if (value >= 337.5 || value < 22.5) {
      windDirection = 'Северный';
    } else if (value >= 22.5 && value < 67.5) {
      windDirection = 'Северо-восточный';
    } else if (value >= 67.5 && value < 112.5) {
      windDirection = 'Восточный';
    } else if (value >= 112.5 && value < 157.5) {
      windDirection = 'Юго-восточный';
    } else if (value >= 157.5 && value < 202.5) {
      windDirection = 'Южный';
    } else if (value >= 202.5 && value < 247.5) {
      windDirection = 'Юго-западный';
    } else if (value >= 247.5 && value < 292.5) {
      windDirection = 'Западный';
    } else {
      windDirection = 'Северо-западный';
    }

    return windDirection;
  }

  @Deprecated('Not use!')
  @override
  int toJson(String object) => 0;
}
