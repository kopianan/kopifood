part of 'food_cart_cubit.dart';

@freezed
class FoodCartState with _$FoodCartState {
  const factory FoodCartState({
    required List<Food> foods,
    @Default([]) List<Food> confirmedOrder,
    Food? selectedFood,
  }) = _FoodCartState;

  factory FoodCartState.initial() => const FoodCartState(
        foods: [],
        confirmedOrder: [],
        selectedFood: null,
      );
}
