part of 'history_bloc.dart';

abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

class AddHistory extends HistoryEvent {
  final HistoryModel historyModel;
  AddHistory({required this.historyModel});
}
