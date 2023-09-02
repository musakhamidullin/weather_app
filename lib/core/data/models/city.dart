import 'package:freezed_annotation/freezed_annotation.dart';

import 'coord.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'coord') @Default(City.defCoord) Coord coord,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'population') @Default(0) int population,
    @JsonKey(name: 'timezone') @Default(0) int timezone,
    @JsonKey(name: 'sunrise') @Default(0) int sunrise,
    @JsonKey(name: 'sunset') @Default(0) int sunset,
  }) = _City;

  static const defCoord = Coord();

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
