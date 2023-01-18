import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/categories.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required List<Categories> categories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
