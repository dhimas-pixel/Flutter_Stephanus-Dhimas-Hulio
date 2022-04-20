import 'package:dio/dio.dart';
import 'dart:convert' as convert;
import 'package:section_20/model/contacts_model.dart';

class ContactsRepo {
  final _dio = Dio();
  final _baseUrl =
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts";

  Future<List<ContactsModel>> getData() async {
    Response apiURL = await _dio.get(_baseUrl);
    try {
      final cData = ContactsModel.decode(convert.json.encode(apiURL.data));
      print(apiURL.data);
      return cData;
    } on DioError catch (e) {
      throw Exception(e);
    }
  }

  Future<ContactsModel> getContactsById(int id) async {
    try {
      final apiURL = await _dio.get('$_baseUrl/$id');
      final cData = ContactsModel.fromJson(apiURL.data);
      return cData;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<ContactsModel> postData(ContactsModel cModel) async {
    try {
      final apiURL = await _dio.post(
        _baseUrl,
        data: convert.json.encode(
          ContactsModel.toJson(ContactsModel(
              id: cModel.id, name: cModel.name, phone: cModel.phone)),
        ),
      );
      final cData = ContactsModel.fromJson(apiURL.data);
      print(apiURL.data);
      return cData;
    } on DioError catch (e) {
      throw Exception(e);
    }
  }
}
