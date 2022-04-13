import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:section_21/add_contacts.dart';
import 'package:section_21/model/contacts_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(contacts: [])) {
    initialState();
    on<AddContacts>((event, emit) async {
      final List<ContactsModel> listContacts = List.from(state.contacts)
        ..add(event.contactsModel);
      emit(CounterState(contacts: listContacts));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String encodeData = ContactsModel.encode(listContacts);

      await prefs.setString('contact_value', encodeData);
    });
  }

  void initialState() {
    syncData();
  }

  Future syncData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String contactString = prefs.getString('contact_value')!;

    state.contacts = ContactsModel.decode(contactString);

    emit(state);
  }
}
