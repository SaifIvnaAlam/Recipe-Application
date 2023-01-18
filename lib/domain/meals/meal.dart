import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String strMeal,
    required String strMealThumb,
    required String idMeal,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  factory Meal.empty() => const _Meal(
        idMeal: "",
        strMealThumb: "",
        strMeal: "",
      );
}
