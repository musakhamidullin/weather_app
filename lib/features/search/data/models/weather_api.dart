import 'package:dio/dio.dart';

import '../../../../core/api/base_api.dart';
import '../../../../core/core.dart';

class WeatherApi implements Api<WeatherDataModel?> {
  WeatherApi() {
    _dio =
        Dio(BaseOptions(baseUrl: 'https://api.openweathermap.org/data/2.5/'));
  }

  // ignore: unused_field
  late final Dio _dio;


  final String _apiKey = 'b0f89ea3da6f0039c5d5b733904697fb';

  final String _url = 'weather?q=';

  @override
  Future<WeatherDataModel> get(String value) async {
    final response =
        await _dio.get('$_url=$value&appid=$_apiKey&units=metric');

    if (response.statusCode != 200) throw Exception();

    return WeatherDataModel.fromJson(response.data);
  }
}
