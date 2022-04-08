part of 'counter_bloc.dart';

class CounterState extends Equatable {
  List<ContactsModel> contacts = [];
  CounterState({required this.contacts});

  @override
  List<Object> get props => [contacts];
}
