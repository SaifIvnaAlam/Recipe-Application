import 'package:recipe_app/domain/cooking/coocking.dart';

abstract class ICookingRepository {
  Future<Cooking> getCooking(String id);
}
