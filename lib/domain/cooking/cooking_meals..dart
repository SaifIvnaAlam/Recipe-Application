import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooking_meals..freezed.dart';
part 'cooking_meals..g.dart';

@freezed
class CoockingMeal with _$CoockingMeal {
  const factory CoockingMeal(
      {required String idMeal,
      required String idMstrMealThumbeal,
      required String strInstructions}) = _CoockingMeal;

  factory CoockingMeal.fromJson(Map<String, dynamic> json) =>
      _$CoockingMealFromJson(json);

  factory CoockingMeal.empty() => const _CoockingMeal(
      idMeal: "", idMstrMealThumbeal: "", strInstructions: "");
}
