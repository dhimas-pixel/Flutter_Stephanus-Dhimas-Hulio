import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:section_21/model/history_model.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryState(history: [])) {
    on<AddHistory>((event, emit) {
      final List<HistoryModel> newList = List.from(state.history)
        ..add(event.historyModel);
      emit(HistoryState(history: newList));
    });
  }
}
