import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../domain/categories.dart';
import '../domain/interface/i_categories_repository.dart';

class CategoriesRepository implements ICategoriesRepository {
  @override
  Future<List<Categories>> getCategories() async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/categories.php";
    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      var result = data.map((json) => Categories.fromJson(json));
      return result.toList();
    } else {
      throw SocketException("Error at api call");
    }
  }
}
