import '../../../core/core.dart';
import 'models/weather_api.dart';

class SearchRepo {
  Future<WeatherDataModel> getWeather(String value) async =>
      await WeatherApi().get(value);
}
