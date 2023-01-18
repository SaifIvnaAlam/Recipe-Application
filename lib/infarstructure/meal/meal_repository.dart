import 'dart:convert';
import 'dart:io';

import 'package:recipe_app/domain/meals/i_meal_repository.dart';
import 'package:recipe_app/domain/meals/mealList.dart';
import 'package:http/http.dart' as http;

class MealReposotory implements iMealRepository {
  @override
  Future<MealList> getMeals(String name) async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/filter.php?c=$name";

    var response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = MealList.fromJson(data);
      return result;
    } else {
      throw const SocketException("Error has occared");
    }
  }
}
