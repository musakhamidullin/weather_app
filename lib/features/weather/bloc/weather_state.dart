part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState(
      {@Default('') String content,
      @Default(Status.unKnown) Status status,
      @Default(WeatherState.defWeatherModel) WeatherDataModel weatherDataModel,
      @Default(WeatherState.defForecast)
      WeatherDataForecast forecastList}) = _WeatherState;

  static const defWeatherModel = WeatherDataModel();
  static const defForecast = WeatherDataForecast();
}
