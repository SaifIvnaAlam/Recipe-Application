part of 'cooking_cubit.dart';

@freezed
class CookingState with _$CookingState {
  const factory CookingState.loading() = _loading;
  const factory CookingState.loaded(Cooking cooking) = _loaded;
  const factory CookingState.error() = _error;
}
