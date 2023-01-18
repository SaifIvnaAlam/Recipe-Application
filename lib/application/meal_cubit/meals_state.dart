part of 'meals_cubit.dart';

@freezed
class MealsState with _$MealsState {
  const factory MealsState.loading() = _loading;
  const factory MealsState.loaded(MealList mealList) = _loaded;
  const factory MealsState.error() = _error;
}
