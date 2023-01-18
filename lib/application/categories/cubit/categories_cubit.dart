import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/category.dart';
import 'package:recipe_app/domain/interface/i_categories_repository.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final ICategoriesRepository _categoriesRepository;
  CategoriesCubit(this._categoriesRepository)
      : super(const CategoriesState.loading());

  Future<void> getCategories() async {
    var categories = await _categoriesRepository.getCategories();

    emit(CategoriesState.loaded(categories));
  }
}
