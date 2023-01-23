import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooking_meals..freezed.dart';
part 'cooking_meals..g.dart';

@freezed
class CoockingMeal with _$CoockingMeal {
  const factory CoockingMeal({
    String? idMeal,
    String? strMealThumb,
    String? strInstructions,
    String? strTags,
    String? strYoutube,
  }) = _CoockingMeal;

  factory CoockingMeal.fromJson(Map<String, dynamic> json) =>
      _$CoockingMealFromJson(json);

  factory CoockingMeal.empty() =>
      const _CoockingMeal(idMeal: "", strMealThumb: "", strInstructions: "");
}
