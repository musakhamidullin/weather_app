import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import '../../../core/core.dart';
import '../data/search_repo.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.searchRepo) : super(const WeatherState()) {
    on<_onSend>(
      (event, emit) async {
        try {
          emit(state.copyWith(status: Status.loading));

          final request =
              await searchRepo.getWeather(event.latitude, event.longitude);
          final forecast =
              await searchRepo.getForecast(event.latitude, event.longitude);

          emit(state.copyWith(
              status: Status.success,
              weatherDataModel: request,
              forecastList: forecast));
        } catch (_) {
          emit(state.copyWith(status: Status.failure));
        }
      },
    );


    _getLocation();
  }

   Future<void> _getLocation() async {
    var status = await Geolocator.checkPermission();

    if (status == LocationPermission.always ||
        status == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      add(WeatherEvent.onSend(
          latitude: position.latitude, longitude: position.longitude));
    }
  }

  final SearchRepo searchRepo;
}
