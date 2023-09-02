import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord.freezed.dart';
part 'coord.g.dart';

@freezed
class Coord with _$Coord {
  const factory Coord({
    @JsonKey(name: 'lon') @Default(0.0) double lon,
    @JsonKey(name: 'lat') @Default(0.0) double lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}
