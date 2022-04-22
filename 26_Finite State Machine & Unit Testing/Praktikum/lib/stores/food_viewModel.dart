import 'package:flutter/material.dart';
import 'package:section_26/api/food_repo.dart';
import 'package:section_26/model/food_model.dart';
import 'package:section_26/model/food_pict.dart';
import 'package:section_26/stores/food_enum.dart';

class FoodViewModel extends ChangeNotifier {
  FoodRepo foodRepo = FoodRepo();
  List<FoodModel> _foodList = [];
  final List<FoodPictModel> _foodPict = [
    FoodPictModel(image: "assets/images/bakso.png"),
    FoodPictModel(image: "assets/images/mie ayam.png"),
    FoodPictModel(image: "assets/images/nasi kucing.png")
  ];
  FoodStateType stateType = FoodStateType.loading;

  List<FoodModel> get getDataFood => _foodList;
  List<FoodPictModel> get getPictFood => _foodPict;
  FoodStateType get getStatetype => stateType;

  FoodViewModel() {
    getFoodRepo();
    getPict();
  }

  void changeState(FoodStateType value) {
    stateType = value;
    notifyListeners();
  }

  Future getFoodRepo() async {
    changeState(FoodStateType.loading);
    try {
      final getData = await foodRepo.getFoodData();
      _foodList = getData;
      changeState(FoodStateType.success);
      notifyListeners();
    } catch (e) {
      changeState(FoodStateType.error);
      throw Exception(e);
    }
  }

  Future getPict() async {
    _foodPict;
    notifyListeners();
  }
}
