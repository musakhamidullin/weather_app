import 'package:dio/dio.dart';

import '../../../../core/core.dart';
import 'interface_api.dart';

class WeatherApi implements GetWeatherByLatitudeAndLongtitude{
  
  @override
  Future<WeatherDataModel> getWeatherByLatitudeAndLongtitude(double latitude, double longitude) async {
    final response =
        await Dio().get('http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=b0f89ea3da6f0039c5d5b733904697fb&lang=ru&units=metric');

    if (response.statusCode != 200) throw Exception();

    return WeatherDataModel.fromJson(response.data);
  }
  
  @override
  Future<WeatherDataForecast> getForecastByLatitudeAndLongtitude(double latitude, double longitude) async {
    final response =
        await Dio().get('http://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&appid=b0f89ea3da6f0039c5d5b733904697fb&lang=ru&units=metric');

    if (response.statusCode != 200) throw Exception();

    return WeatherDataForecast.fromJson(response.data);
  }
}
