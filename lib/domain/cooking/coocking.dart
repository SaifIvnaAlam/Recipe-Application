import 'package:freezed_annotation/freezed_annotation.dart';
import 'cooking_meals..dart';

part 'coocking.freezed.dart';
part 'coocking.g.dart';

@freezed
class Cooking with _$Cooking {
  const factory Cooking({required List<CoockingMeal> meals}) = _Cooking;

  factory Cooking.fromJson(Map<String, dynamic> json) =>
      _$CookingFromJson(json);
}
