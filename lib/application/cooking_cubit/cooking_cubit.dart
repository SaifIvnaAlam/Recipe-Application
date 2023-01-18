import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/cooking/i_coocking_repository.dart';

import '../../domain/cooking/coocking.dart';

part 'cooking_state.dart';
part 'cooking_cubit.freezed.dart';

class CookingCubit extends Cubit<CookingState> {
  final ICookingRepository _cookingRepository;

  CookingCubit(this._cookingRepository) : super(const CookingState.loading());

  Future<void> getCooking(String id) async {
    var data = await _cookingRepository.getCooking(id);

    emit(CookingState.loaded(data));
  }
}
