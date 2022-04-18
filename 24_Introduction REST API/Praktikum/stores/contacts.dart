import 'package:flutter/material.dart';
import 'package:section_20/api/contacts_repo.dart';
import 'package:section_20/model/contacts_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Enum ResultState{
//   loading, hasdata
// };

class Contacts with ChangeNotifier {
  ContactsRepo contactsRepo = ContactsRepo();
  bool _isProcessing = true;
  List<ContactsModel> _contacts = [];

  Contacts() {
    setContacts();
  }

  bool get isProcessing => _isProcessing;

  setIsProcessing(bool value) {
    _isProcessing = value;
    notifyListeners();
  }

  List<ContactsModel> get getContacts => _contacts;

  Future setContacts() async {
    final response = await contactsRepo.getData();
    _contacts = response;
    syncData();
    setIsProcessing(false);
    notifyListeners();
  }

  void addContacts(ContactsModel contacts) async {
    final response = await contactsRepo.postData(contacts);
    _contacts.add(response);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String encodeData = ContactsModel.encode(_contacts);

    await prefs.setString('contact_value', encodeData);

    notifyListeners();
  }

  Future syncData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String contactString = prefs.getString('contact_value')!;

    _contacts = ContactsModel.decode(contactString);

    notifyListeners();
  }
}
