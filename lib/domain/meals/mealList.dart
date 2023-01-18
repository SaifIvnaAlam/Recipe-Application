import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/meals/meal.dart';

part 'mealList.freezed.dart';
part 'mealList.g.dart';

@freezed
class MealList with _$MealList {
  const factory MealList({required List<Meal> meals}) = _MealList;

  factory MealList.fromJson(Map<String, dynamic> json) =>
      _$MealListFromJson(json);
}
