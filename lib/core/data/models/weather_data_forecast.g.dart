// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherdataForecast _$$_WeatherdataForecastFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherdataForecast(
      cod: json['cod'] as String? ?? '',
      message: json['message'] as int? ?? 0,
      cnt: json['cnt'] as int? ?? 0,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ForecastList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      city: json['city'] == null
          ? WeatherDataForecast.defCity
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherdataForecastToJson(
        _$_WeatherdataForecast instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
