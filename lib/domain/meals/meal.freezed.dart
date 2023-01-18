// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get strMeal => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;
  String get idMeal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = null,
    Object? strMealThumb = null,
    Object? idMeal = null,
  }) {
    return _then(_value.copyWith(
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$_MealCopyWith(_$_Meal value, $Res Function(_$_Meal) then) =
      __$$_MealCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class __$$_MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res, _$_Meal>
    implements _$$_MealCopyWith<$Res> {
  __$$_MealCopyWithImpl(_$_Meal _value, $Res Function(_$_Meal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strMeal = null,
    Object? strMealThumb = null,
    Object? idMeal = null,
  }) {
    return _then(_$_Meal(
      strMeal: null == strMeal
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: null == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: null == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.strMeal,
      required this.strMealThumb,
      required this.idMeal});

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String strMeal;
  @override
  final String strMealThumb;
  @override
  final String idMeal;

  @override
  String toString() {
    return 'Meal(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meal &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, strMeal, strMealThumb, idMeal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealCopyWith<_$_Meal> get copyWith =>
      __$$_MealCopyWithImpl<_$_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required final String strMeal,
      required final String strMealThumb,
      required final String idMeal}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get strMeal;
  @override
  String get strMealThumb;
  @override
  String get idMeal;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
