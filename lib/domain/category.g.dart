// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryList _$$_CategoryListFromJson(Map<String, dynamic> json) =>
    _$_CategoryList(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryListToJson(_$_CategoryList instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
