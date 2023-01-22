import 'dart:convert';
import 'dart:io';

import 'package:recipe_app/domain/meals/i_meal_repository.dart';
import 'package:recipe_app/domain/meals/mealList.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/presentation/util/logger.dart';

class MealReposotory implements iMealRepository {
  @override
  Future<MealList> getMeals(String name) async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/filter.php?c=$name";

    var response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      try {
        var data = jsonDecode(response.body);
        var result = MealList.fromJson(data);
        logger.d("Got Meal API Data(Success)", "Meals Page API Response");
        return result;
      } catch (e) {
        logger.e(e.toString(), "Meals API Error");
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      logger.e('Data not found!', 'Meals API Error');
      throw const SocketException('Data not found');
    } else {
      logger.e('Unexpected server error occurred', 'Meal API Error');
      throw const SocketException("Error has occared");
    }
  }
}
