// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coocking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cooking _$$_CookingFromJson(Map<String, dynamic> json) => _$_Cooking(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => CoockingMeal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CookingToJson(_$_Cooking instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
