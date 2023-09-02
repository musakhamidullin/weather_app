// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDataModel _$$_WeatherDataModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherDataModel(
      coord: json['coord'] == null
          ? WeatherDataModel.defCoord
          : Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      base: json['base'] as String? ?? '',
      main: json['main'] == null
          ? WeatherDataModel.defMain
          : MainInfo.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int? ?? 0,
      wind: json['wind'] == null
          ? WeatherDataModel.defWind
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? WeatherDataModel.defClouds
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int? ?? 0,
      sys: json['sys'] == null
          ? WeatherDataModel.defSys
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      cod: json['cod'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WeatherDataModelToJson(_$_WeatherDataModel instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
