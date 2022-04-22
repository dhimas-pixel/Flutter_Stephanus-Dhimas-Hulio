import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'food_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FoodModel {
  final int id;
  final String nameFood;

  FoodModel({
    required this.id,
    required this.nameFood,
  });

  factory FoodModel.fromJson(Map<String, dynamic> jsonData) =>
      _$FoodModelFromJson(jsonData);

  static Map<String, dynamic> toJson(FoodModel foodModel) =>
      _$FoodModelToJson(foodModel);

  static String encode(List<FoodModel> value) => json.encode(
        value
            .map<Map<String, dynamic>>(
                (foodModel) => FoodModel.toJson(foodModel))
            .toList(),
      );

  static List<FoodModel> decode(String value) =>
      (json.decode(value) as List<dynamic>)
          .map((item) => FoodModel.fromJson(item))
          .toList();
}
