part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class AddContacts extends CounterEvent {
  final ContactsModel contactsModel;
  AddContacts({required this.contactsModel});
}
