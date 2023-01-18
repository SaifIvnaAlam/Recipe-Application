// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mealList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealList _$$_MealListFromJson(Map<String, dynamic> json) => _$_MealList(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealListToJson(_$_MealList instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
