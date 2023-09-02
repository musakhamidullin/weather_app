import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed
class Sys with _$Sys {
  const factory Sys({
    @JsonKey(name: 'type') @Default(0) int type,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'sunrise') @Default(0) int sunrise,
    @JsonKey(name: 'sunset') @Default(0) int sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
