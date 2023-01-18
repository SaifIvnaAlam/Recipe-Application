import 'package:recipe_app/domain/meals/mealList.dart';

abstract class iMealRepository {
  Future<MealList> getMeals(String name);
}
