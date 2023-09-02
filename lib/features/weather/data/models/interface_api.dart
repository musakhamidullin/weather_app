import '../../../../core/core.dart';

interface class GetWeatherByLatitudeAndLongtitude{

  Future<WeatherDataModel> getWeatherByLatitudeAndLongtitude(double latitude, double longitude) async => const WeatherDataModel();

  Future<WeatherDataForecast> getForecastByLatitudeAndLongtitude(double latitude, double longitude) async => const WeatherDataForecast();

}