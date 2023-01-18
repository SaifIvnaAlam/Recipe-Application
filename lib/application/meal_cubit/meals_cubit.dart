import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/meals/i_meal_repository.dart';
import 'package:recipe_app/domain/meals/mealList.dart';

part 'meals_state.dart';
part 'meals_cubit.freezed.dart';

class MealsCubit extends Cubit<MealsState> {
  final iMealRepository _mealRepository;
  MealsCubit(this._mealRepository) : super(const MealsState.loading());

  Future<void> getMeals(String name) async {
    String mealName = name;
    var result = await _mealRepository.getMeals(mealName);
    emit(MealsState.loaded(result));
  }
}
