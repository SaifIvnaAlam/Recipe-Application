import 'dart:convert';
import 'dart:io';

import 'package:recipe_app/domain/cooking/coocking.dart';
import 'package:recipe_app/domain/cooking/i_coocking_repository.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/presentation/util/logger.dart';

class CookingRepository implements ICookingRepository {
  @override
  Future<Cooking> getCooking(String id) async {
    var baseUrl = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id";

    var response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      try {
        var data = jsonDecode(response.body);
        var result = Cooking.fromJson(data);
        logger.d('Got Cooking Repository Data', 'API Response(Success)');

        return result;
      } catch (e) {
        logger.e('Data not found!', 'Cooking Repository API Error');
        throw const SocketException('Data not found');
      }
    } else {
      throw const SocketException("Error has occared");
    }
  }
}
