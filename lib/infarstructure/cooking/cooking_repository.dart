import 'dart:convert';
import 'dart:io';

import 'package:recipe_app/domain/cooking/coocking.dart';
import 'package:recipe_app/domain/cooking/i_coocking_repository.dart';
import 'package:http/http.dart' as http;

class CookingRepository implements ICookingRepository {
  @override
  Future<Cooking> getCooking(String id) async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id";

    var response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = Cooking.fromJson(data);
      return result;
    } else {
      throw const SocketException("Error has occared");
    }
  }
}
