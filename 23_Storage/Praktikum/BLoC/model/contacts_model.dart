import 'dart:convert';

class ContactsModel {
  final String name;
  final String number;

  ContactsModel({
    required this.name,
    required this.number,
  });

  factory ContactsModel.fromJson(Map<String, dynamic> jsonData) {
    return ContactsModel(
      name: jsonData['name'],
      number: jsonData['number'],
    );
  }

  static Map<String, dynamic> toMap(ContactsModel contactsModel) => {
        'name': contactsModel.name,
        'number': contactsModel.number,
      };

  static String encode(List<ContactsModel> cModel) => json.encode(
        cModel
            .map<Map<String, dynamic>>(
                (contactsModel) => ContactsModel.toMap(contactsModel))
            .toList(),
      );

  static List<ContactsModel> decode(String cModel) =>
      (json.decode(cModel) as List<dynamic>)
          .map((item) => ContactsModel.fromJson(item))
          .toList();
}
