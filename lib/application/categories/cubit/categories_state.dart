part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = _loading;
  const factory CategoriesState.loaded(CategoryList category) = _loaded;
  const factory CategoriesState.error() = _error;
}
