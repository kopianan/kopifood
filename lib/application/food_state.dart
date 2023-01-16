part of 'food_cubit.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState.initial() = _Initial;
  const factory FoodState.loading() = _Loading;
  const factory FoodState.onGetAllFood(List<Food> foods) = _OnGetAllFood;
}
