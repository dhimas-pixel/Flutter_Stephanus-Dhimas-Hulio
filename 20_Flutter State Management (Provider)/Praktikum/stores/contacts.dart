import 'package:flutter/material.dart';
import 'package:section_20/contacts_model.dart';

class Contacts with ChangeNotifier {
  List<ContactsModel> _contacts = [
    ContactsModel(name: "Dhimas", number: "083167628073")
  ];
  List<ContactsModel> get getContacts => _contacts;

  void add(ContactsModel contacts) {
    _contacts.add(contacts);
    notifyListeners();
  }
}
