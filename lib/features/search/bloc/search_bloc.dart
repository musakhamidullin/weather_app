import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/core.dart';
import '../data/search_repo.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.searchRepo) : super(const SearchState()) {
    on<_onSend>(_onSending);
  }

  final SearchRepo searchRepo;

  FutureOr<void> _onSending(_onSend event, Emitter<SearchState> emit) async {
    try {
      emit(state.copyWith(status: Status.loading));

      final request = await searchRepo.getWeather(event.value);

      emit(state.copyWith(status: Status.success));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
