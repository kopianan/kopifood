// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodCartState {
  List<Food> get foods => throw _privateConstructorUsedError;
  List<Food> get confirmedOrder => throw _privateConstructorUsedError;
  Food? get selectedFood => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodCartStateCopyWith<FoodCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCartStateCopyWith<$Res> {
  factory $FoodCartStateCopyWith(
          FoodCartState value, $Res Function(FoodCartState) then) =
      _$FoodCartStateCopyWithImpl<$Res, FoodCartState>;
  @useResult
  $Res call({List<Food> foods, List<Food> confirmedOrder, Food? selectedFood});

  $FoodCopyWith<$Res>? get selectedFood;
}

/// @nodoc
class _$FoodCartStateCopyWithImpl<$Res, $Val extends FoodCartState>
    implements $FoodCartStateCopyWith<$Res> {
  _$FoodCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? confirmedOrder = null,
    Object? selectedFood = freezed,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      confirmedOrder: null == confirmedOrder
          ? _value.confirmedOrder
          : confirmedOrder // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      selectedFood: freezed == selectedFood
          ? _value.selectedFood
          : selectedFood // ignore: cast_nullable_to_non_nullable
              as Food?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res>? get selectedFood {
    if (_value.selectedFood == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.selectedFood!, (value) {
      return _then(_value.copyWith(selectedFood: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FoodCartStateCopyWith<$Res>
    implements $FoodCartStateCopyWith<$Res> {
  factory _$$_FoodCartStateCopyWith(
          _$_FoodCartState value, $Res Function(_$_FoodCartState) then) =
      __$$_FoodCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Food> foods, List<Food> confirmedOrder, Food? selectedFood});

  @override
  $FoodCopyWith<$Res>? get selectedFood;
}

/// @nodoc
class __$$_FoodCartStateCopyWithImpl<$Res>
    extends _$FoodCartStateCopyWithImpl<$Res, _$_FoodCartState>
    implements _$$_FoodCartStateCopyWith<$Res> {
  __$$_FoodCartStateCopyWithImpl(
      _$_FoodCartState _value, $Res Function(_$_FoodCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? confirmedOrder = null,
    Object? selectedFood = freezed,
  }) {
    return _then(_$_FoodCartState(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      confirmedOrder: null == confirmedOrder
          ? _value._confirmedOrder
          : confirmedOrder // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      selectedFood: freezed == selectedFood
          ? _value.selectedFood
          : selectedFood // ignore: cast_nullable_to_non_nullable
              as Food?,
    ));
  }
}

/// @nodoc

class _$_FoodCartState implements _FoodCartState {
  const _$_FoodCartState(
      {required final List<Food> foods,
      final List<Food> confirmedOrder = const [],
      this.selectedFood})
      : _foods = foods,
        _confirmedOrder = confirmedOrder;

  final List<Food> _foods;
  @override
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Food> _confirmedOrder;
  @override
  @JsonKey()
  List<Food> get confirmedOrder {
    if (_confirmedOrder is EqualUnmodifiableListView) return _confirmedOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmedOrder);
  }

  @override
  final Food? selectedFood;

  @override
  String toString() {
    return 'FoodCartState(foods: $foods, confirmedOrder: $confirmedOrder, selectedFood: $selectedFood)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodCartState &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality()
                .equals(other._confirmedOrder, _confirmedOrder) &&
            (identical(other.selectedFood, selectedFood) ||
                other.selectedFood == selectedFood));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_confirmedOrder),
      selectedFood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodCartStateCopyWith<_$_FoodCartState> get copyWith =>
      __$$_FoodCartStateCopyWithImpl<_$_FoodCartState>(this, _$identity);
}

abstract class _FoodCartState implements FoodCartState {
  const factory _FoodCartState(
      {required final List<Food> foods,
      final List<Food> confirmedOrder,
      final Food? selectedFood}) = _$_FoodCartState;

  @override
  List<Food> get foods;
  @override
  List<Food> get confirmedOrder;
  @override
  Food? get selectedFood;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCartStateCopyWith<_$_FoodCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
