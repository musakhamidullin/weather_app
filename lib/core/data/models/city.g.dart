// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      coord: json['coord'] == null
          ? City.defCoord
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String? ?? '',
      population: json['population'] as int? ?? 0,
      timezone: json['timezone'] as int? ?? 0,
      sunrise: json['sunrise'] as int? ?? 0,
      sunset: json['sunset'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
