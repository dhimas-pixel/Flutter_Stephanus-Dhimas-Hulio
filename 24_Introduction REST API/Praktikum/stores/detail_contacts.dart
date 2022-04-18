import 'package:flutter/material.dart';
import 'package:section_20/api/contacts_repo.dart';
import 'package:section_20/model/contacts_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailContacts with ChangeNotifier {
  ContactsRepo contactsRepo = ContactsRepo();
  bool _isProcessing = true;
  ContactsModel contactsModel = ContactsModel(id: 0, name: "", phone: "");

  bool get isProcessing => _isProcessing;

  setIsProcessing(bool value) {
    _isProcessing = value;
    notifyListeners();
  }

  ContactsModel get getByID => contactsModel;

  Future setContactsID(int id) async {
    contactsModel = await contactsRepo.getContactsById(id);
    setIsProcessing(false);
    notifyListeners();
  }
}
