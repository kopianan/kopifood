part of 'food_cart_cubit.dart';

@freezed
class FoodCartState with _$FoodCartState {
  const factory FoodCartState({
    required List<Food> foods,
    Food? selectedFood,
  }) = _FoodCartState;

  factory FoodCartState.initial() => FoodCartState(
        foods: [],
        selectedFood: null,
      );
}
