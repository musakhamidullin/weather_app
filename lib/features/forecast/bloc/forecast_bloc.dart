import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';
import '../data/forecast_repository.dart';
import '../data/model/forecast_model.dart';

part 'forecast_event.dart';
part 'forecast_state.dart';
part 'forecast_bloc.freezed.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastBloc(this.forecastRepository) : super(const ForecastState()) {
    on<_GetForecast>(_getForecast);
  }

  final ForecastRepository forecastRepository;

  FutureOr<void> _getForecast(
      _GetForecast event, Emitter<ForecastState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final request =
          await forecastRepository.getForecast(value: event.namePlace);

      emit(state.copyWith(data: request, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
