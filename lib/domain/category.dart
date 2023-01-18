import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/categories.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryList with _$CategoryList {
  const factory CategoryList({
    required List<Categories> categories,
  }) = _CategoryList;

  factory CategoryList.fromJson(Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);
}
