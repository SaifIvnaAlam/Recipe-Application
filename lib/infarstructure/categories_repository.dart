import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../domain/category.dart';
import '../domain/interface/i_categories_repository.dart';

class CategoriesRepository implements ICategoriesRepository {
  @override
  Future<Category> getCategories() async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/categories.php";
    var response = await http.get(Uri.parse(baseUrl));
    print(response.body);

    var data = jsonDecode(response.body);
    var result = Category.fromJson(data);
    return result;
  }
}
