import 'package:recipe_app/domain/category.dart';

import '../categories.dart';

abstract class ICategoriesRepository {
  Future<CategoryList> getCategories();
}
