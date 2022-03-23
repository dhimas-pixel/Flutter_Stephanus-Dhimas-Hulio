import 'package:section_14/user_model.dart';
import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Repo {
  var apiURL = Uri.parse("https://623ada282e056d1037e86716.mockapi.io/users");
  Future getData() async {
    var apiResult = await http.get(apiURL);
    try {
      Iterable jsonObject = convert.jsonDecode(apiResult.body);
      List<User> userData = jsonObject.map((e) => User.createUser(e)).toList();

      return userData;
    } catch (e) {
      print(e.toString());
    }
  }
}
