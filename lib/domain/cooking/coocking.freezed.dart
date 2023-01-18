// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coocking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cooking _$CookingFromJson(Map<String, dynamic> json) {
  return _Cooking.fromJson(json);
}

/// @nodoc
mixin _$Cooking {
  List<CoockingMeal> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CookingCopyWith<Cooking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookingCopyWith<$Res> {
  factory $CookingCopyWith(Cooking value, $Res Function(Cooking) then) =
      _$CookingCopyWithImpl<$Res, Cooking>;
  @useResult
  $Res call({List<CoockingMeal> meals});
}

/// @nodoc
class _$CookingCopyWithImpl<$Res, $Val extends Cooking>
    implements $CookingCopyWith<$Res> {
  _$CookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<CoockingMeal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CookingCopyWith<$Res> implements $CookingCopyWith<$Res> {
  factory _$$_CookingCopyWith(
          _$_Cooking value, $Res Function(_$_Cooking) then) =
      __$$_CookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoockingMeal> meals});
}

/// @nodoc
class __$$_CookingCopyWithImpl<$Res>
    extends _$CookingCopyWithImpl<$Res, _$_Cooking>
    implements _$$_CookingCopyWith<$Res> {
  __$$_CookingCopyWithImpl(_$_Cooking _value, $Res Function(_$_Cooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$_Cooking(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<CoockingMeal>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cooking implements _Cooking {
  const _$_Cooking({required final List<CoockingMeal> meals}) : _meals = meals;

  factory _$_Cooking.fromJson(Map<String, dynamic> json) =>
      _$$_CookingFromJson(json);

  final List<CoockingMeal> _meals;
  @override
  List<CoockingMeal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'Cooking(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cooking &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CookingCopyWith<_$_Cooking> get copyWith =>
      __$$_CookingCopyWithImpl<_$_Cooking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CookingToJson(
      this,
    );
  }
}

abstract class _Cooking implements Cooking {
  const factory _Cooking({required final List<CoockingMeal> meals}) =
      _$_Cooking;

  factory _Cooking.fromJson(Map<String, dynamic> json) = _$_Cooking.fromJson;

  @override
  List<CoockingMeal> get meals;
  @override
  @JsonKey(ignore: true)
  _$$_CookingCopyWith<_$_Cooking> get copyWith =>
      throw _privateConstructorUsedError;
}
