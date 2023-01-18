// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mealList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealList _$MealListFromJson(Map<String, dynamic> json) {
  return _MealList.fromJson(json);
}

/// @nodoc
mixin _$MealList {
  List<Meal> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealListCopyWith<MealList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealListCopyWith<$Res> {
  factory $MealListCopyWith(MealList value, $Res Function(MealList) then) =
      _$MealListCopyWithImpl<$Res, MealList>;
  @useResult
  $Res call({List<Meal> meals});
}

/// @nodoc
class _$MealListCopyWithImpl<$Res, $Val extends MealList>
    implements $MealListCopyWith<$Res> {
  _$MealListCopyWithImpl(this._value, this._then);

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
              as List<Meal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealListCopyWith<$Res> implements $MealListCopyWith<$Res> {
  factory _$$_MealListCopyWith(
          _$_MealList value, $Res Function(_$_MealList) then) =
      __$$_MealListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meal> meals});
}

/// @nodoc
class __$$_MealListCopyWithImpl<$Res>
    extends _$MealListCopyWithImpl<$Res, _$_MealList>
    implements _$$_MealListCopyWith<$Res> {
  __$$_MealListCopyWithImpl(
      _$_MealList _value, $Res Function(_$_MealList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$_MealList(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealList implements _MealList {
  const _$_MealList({required final List<Meal> meals}) : _meals = meals;

  factory _$_MealList.fromJson(Map<String, dynamic> json) =>
      _$$_MealListFromJson(json);

  final List<Meal> _meals;
  @override
  List<Meal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealList(meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealList &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealListCopyWith<_$_MealList> get copyWith =>
      __$$_MealListCopyWithImpl<_$_MealList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealListToJson(
      this,
    );
  }
}

abstract class _MealList implements MealList {
  const factory _MealList({required final List<Meal> meals}) = _$_MealList;

  factory _MealList.fromJson(Map<String, dynamic> json) = _$_MealList.fromJson;

  @override
  List<Meal> get meals;
  @override
  @JsonKey(ignore: true)
  _$$_MealListCopyWith<_$_MealList> get copyWith =>
      throw _privateConstructorUsedError;
}
