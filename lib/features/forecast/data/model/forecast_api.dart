import 'package:dio/dio.dart';
import '../../../../core/api/base_api.dart';
import '../../../../core/core.dart';

class ForecastApi implements Api<WeatherDataForecast> {
  ForecastApi() {
    _dio =
        Dio(BaseOptions(baseUrl: 'https://api.openweathermap.org/data/2.5/'));
  }

  late final Dio _dio;

  final String _apiKey = 'b0f89ea3da6f0039c5d5b733904697fb';

  final String _url = 'forecast?q=';

  @override
  Future<WeatherDataForecast> get(String value) async {
    final response = await _dio.get('$_url=$value&appid=$_apiKey&units=metric');

    if (response.statusCode != 200) throw Exception();

    return WeatherDataForecast.fromJson(response.data);
  }
}
