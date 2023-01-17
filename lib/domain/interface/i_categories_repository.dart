import '../categories.dart';

abstract class ICategoriesRepository {
  Future<List<Categories>> getCategories();
}
