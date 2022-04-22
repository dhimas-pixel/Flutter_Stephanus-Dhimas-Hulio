import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:section_26/model/food_model.dart';
import 'package:section_26/stores/food_enum.dart';
import 'package:section_26/stores/food_viewModel.dart';
import 'package:test/test.dart';

import 'food_unit_test.mocks.dart';

@GenerateMocks([FoodViewModel])
void main() {
  group('FoodViewModel', () {
    FoodViewModel foodViewModel = MockFoodViewModel();
    final FoodViewModel getState = FoodViewModel();

    test('get all food returns data', () async {
      when(foodViewModel.getFoodRepo()).thenAnswer(
          (_) async => <FoodModel>[FoodModel(id: 1, nameFood: "String")]);
      var foodData = await foodViewModel.getFoodRepo();
      expect(foodData.isNotEmpty, true);
    });

    test('Finit Test Error', () {
      getState.changeState(FoodStateType.loading);
      expect(getState.getStatetype, FoodStateType.loading);
    });

    test('Finit Test Error', () {
      getState.changeState(FoodStateType.error);
      expect(getState.getStatetype, FoodStateType.error);
    });
  });
}
