// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastList _$$_ForecastListFromJson(Map<String, dynamic> json) =>
    _$_ForecastList(
      dt: json['dt'] as int? ?? 0,
      main: json['main'] == null
          ? ForecastList.defMain
          : MainInfo.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      clouds: json['clouds'] == null
          ? ForecastList.defClouds
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? ForecastList.defWind
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int? ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0.0,
      sys: json['sys'] == null
          ? ForecastList.defSysforecast
          : SysForecast.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String? ?? '',
      rain: json['rain'] == null
          ? ForecastList.defRain
          : Rain.fromJson(json['rain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastListToJson(_$_ForecastList instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dtTxt,
      'rain': instance.rain,
    };
