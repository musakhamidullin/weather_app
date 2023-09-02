// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainInfo _$$_MainInfoFromJson(Map<String, dynamic> json) => _$_MainInfo(
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0.0,
      tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0.0,
      tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0.0,
      pressure: json['pressure'] as int? ?? 0,
      humidity: json['humidity'] == null
          ? (0, '')
          : const HumidityConverter().fromJson(json['humidity'] as int),
    );

Map<String, dynamic> _$$_MainInfoToJson(_$_MainInfo instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': const HumidityConverter().toJson(instance.humidity),
    };
