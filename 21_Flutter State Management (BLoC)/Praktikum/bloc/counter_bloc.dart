import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:section_21/add_contacts.dart';
import 'package:section_21/model/contacts_model.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(CounterState(contacts: [
          ContactsModel(name: "Stephanus Dhimas", number: "083167628073")
        ])) {
    on<AddContacts>((event, emit) {
      final List<ContactsModel> listContacts = List.from(state.contacts)
        ..add(event.contactsModel);
      emit(CounterState(contacts: listContacts));
    });
  }
}
