import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:recipe_app/presentation/util/logger.dart';

import '../domain/category.dart';
import '../domain/interface/i_categories_repository.dart';

class CategoriesRepository implements ICategoriesRepository {
  @override
  Future<CategoryList> getCategories() async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/categories.php";

    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      try {
        var data = jsonDecode(response.body);
        var result = CategoryList.fromJson(data);
        logger.d("Got HomePage API Data (Success)", "Home Page API Response");
        return result;
      } catch (e) {
        logger.e(e.toString(), 'Home page API Error');
        throw const SocketException('Could not parse data');
      }
    } else if (response.statusCode == 404) {
      logger.e('Data not found!', 'Home Page Details API Error');
      throw const SocketException('Data not found');
    } else {
      logger.e(
          'Unexpected server error occurred', 'Home page Details API Error');
      throw const SocketException('Unexpected server error occurred');
    }
  }
}
