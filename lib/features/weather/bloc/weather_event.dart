part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.onSend({required double latitude, required double longitude}) = _onSend;
}