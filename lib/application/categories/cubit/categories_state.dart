part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.loading() = _loading;
  const factory CategoriesState.loaded(Category categories) = _loaded;
  const factory CategoriesState.error() = _error;
}
