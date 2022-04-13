import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:section_21/model/history_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryState(history: [])) {
    initialState();
    on<AddHistory>((event, emit) async {
      final List<HistoryModel> newList = List.from(state.history)
        ..add(event.historyModel);
      emit(HistoryState(history: newList));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String encodeData = HistoryModel.encode(newList);

      await prefs.setString('history_value', encodeData);
    });
  }

  void initialState() {
    syncData();
  }

  Future syncData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String historyString = prefs.getString('history_value')!;

    state.history = HistoryModel.decode(historyString);

    emit(state);
  }
}
