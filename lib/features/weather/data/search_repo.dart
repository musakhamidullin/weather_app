import '../../../core/core.dart';
import 'models/weather_api.dart';

class SearchRepo {
  Future<WeatherDataModel> getWeather(double latitude, double longitude) async =>
      await WeatherApi().getWeatherByLatitudeAndLongtitude(latitude, longitude);


  Future<WeatherDataForecast> getForecast(double latitude, double longitude) async =>
      await WeatherApi().getForecastByLatitudeAndLongtitude(latitude, longitude);
}
