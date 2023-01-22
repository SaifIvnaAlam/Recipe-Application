// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooking_meals..dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoockingMeal _$CoockingMealFromJson(Map<String, dynamic> json) {
  return _CoockingMeal.fromJson(json);
}

/// @nodoc
mixin _$CoockingMeal {
  String? get idMeal => throw _privateConstructorUsedError;
  String? get strMealThumb => throw _privateConstructorUsedError;
  String? get strInstructions => throw _privateConstructorUsedError;
  String? get strTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoockingMealCopyWith<CoockingMeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoockingMealCopyWith<$Res> {
  factory $CoockingMealCopyWith(
          CoockingMeal value, $Res Function(CoockingMeal) then) =
      _$CoockingMealCopyWithImpl<$Res, CoockingMeal>;
  @useResult
  $Res call(
      {String? idMeal,
      String? strMealThumb,
      String? strInstructions,
      String? strTags});
}

/// @nodoc
class _$CoockingMealCopyWithImpl<$Res, $Val extends CoockingMeal>
    implements $CoockingMealCopyWith<$Res> {
  _$CoockingMealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strInstructions = freezed,
    Object? strTags = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoockingMealCopyWith<$Res>
    implements $CoockingMealCopyWith<$Res> {
  factory _$$_CoockingMealCopyWith(
          _$_CoockingMeal value, $Res Function(_$_CoockingMeal) then) =
      __$$_CoockingMealCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idMeal,
      String? strMealThumb,
      String? strInstructions,
      String? strTags});
}

/// @nodoc
class __$$_CoockingMealCopyWithImpl<$Res>
    extends _$CoockingMealCopyWithImpl<$Res, _$_CoockingMeal>
    implements _$$_CoockingMealCopyWith<$Res> {
  __$$_CoockingMealCopyWithImpl(
      _$_CoockingMeal _value, $Res Function(_$_CoockingMeal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMealThumb = freezed,
    Object? strInstructions = freezed,
    Object? strTags = freezed,
  }) {
    return _then(_$_CoockingMeal(
      idMeal: freezed == idMeal
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String?,
      strMealThumb: freezed == strMealThumb
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoockingMeal implements _CoockingMeal {
  const _$_CoockingMeal(
      {this.idMeal, this.strMealThumb, this.strInstructions, this.strTags});

  factory _$_CoockingMeal.fromJson(Map<String, dynamic> json) =>
      _$$_CoockingMealFromJson(json);

  @override
  final String? idMeal;
  @override
  final String? strMealThumb;
  @override
  final String? strInstructions;
  @override
  final String? strTags;

  @override
  String toString() {
    return 'CoockingMeal(idMeal: $idMeal, strMealThumb: $strMealThumb, strInstructions: $strInstructions, strTags: $strTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoockingMeal &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strTags, strTags) || other.strTags == strTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idMeal, strMealThumb, strInstructions, strTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoockingMealCopyWith<_$_CoockingMeal> get copyWith =>
      __$$_CoockingMealCopyWithImpl<_$_CoockingMeal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoockingMealToJson(
      this,
    );
  }
}

abstract class _CoockingMeal implements CoockingMeal {
  const factory _CoockingMeal(
      {final String? idMeal,
      final String? strMealThumb,
      final String? strInstructions,
      final String? strTags}) = _$_CoockingMeal;

  factory _CoockingMeal.fromJson(Map<String, dynamic> json) =
      _$_CoockingMeal.fromJson;

  @override
  String? get idMeal;
  @override
  String? get strMealThumb;
  @override
  String? get strInstructions;
  @override
  String? get strTags;
  @override
  @JsonKey(ignore: true)
  _$$_CoockingMealCopyWith<_$_CoockingMeal> get copyWith =>
      throw _privateConstructorUsedError;
}
