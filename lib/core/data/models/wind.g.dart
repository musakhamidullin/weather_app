// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wind _$$_WindFromJson(Map<String, dynamic> json) => _$_Wind(
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
      windDirection: json['deg'] == null
          ? ''
          : const DegConverter().fromJson(json['deg'] as int),
      gust: (json['gust'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': const DegConverter().toJson(instance.windDirection),
      'gust': instance.gust,
    };
