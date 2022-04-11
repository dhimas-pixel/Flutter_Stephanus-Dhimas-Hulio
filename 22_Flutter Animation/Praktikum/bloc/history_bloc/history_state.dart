part of 'history_bloc.dart';

class HistoryState extends Equatable {
  List<HistoryModel> history = [];
  HistoryState({required this.history});

  @override
  List<Object> get props => [history];
}
