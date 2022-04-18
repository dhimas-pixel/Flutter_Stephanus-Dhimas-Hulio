import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'contacts_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactsModel {
  final int id;
  final String name;
  final String phone;

  ContactsModel({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory ContactsModel.fromJson(Map<String, dynamic> jsonData) =>
      _$ContactsModelFromJson(jsonData);

  static Map<String, dynamic> toJson(ContactsModel contactsModel) =>
      _$ContactsModelToJson(contactsModel);

  static String encode(List<ContactsModel> cModel) => json.encode(
        cModel
            .map<Map<String, dynamic>>(
                (contactsModel) => ContactsModel.toJson(contactsModel))
            .toList(),
      );

  static List<ContactsModel> decode(String cModel) =>
      (json.decode(cModel) as List<dynamic>)
          .map((item) => ContactsModel.fromJson(item))
          .toList();
}
