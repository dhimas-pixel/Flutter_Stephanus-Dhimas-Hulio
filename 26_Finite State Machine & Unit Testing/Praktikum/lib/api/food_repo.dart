import 'package:dio/dio.dart';
import 'dart:convert' as convert;

import 'package:section_26/model/food_model.dart';

class FoodRepo {
  final _dio = Dio();
  final _baseUrl =
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods";

  Future<List<FoodModel>> getFoodData() async {
    Response response = await _dio.get(_baseUrl);
    try {
      final List<FoodModel> getData =
          FoodModel.decode(convert.json.encode(response.data));
      print(response.data);
      return getData;
    } on DioError catch (e) {
      throw Exception(e);
    }
  }
}
