import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/domain/food/food.dart';

part 'food_cart_state.dart';
part 'food_cart_cubit.freezed.dart';

@injectable
class FoodCartCubit extends Cubit<FoodCartState> {
  FoodCartCubit() : super(FoodCartState.initial());

  void setFoods(List<Food> foods) {
    emit(state.copyWith(foods: foods));
  }

  void setSelectedFood(Food? food) {
    emit(state.copyWith(selectedFood: food));
  }

  void updateToBasket() {
    final newFood = state.selectedFood;
    var listFoods = state.foods.toList();

    listFoods[listFoods.indexWhere((element) => element.id == newFood!.id)] =
        newFood!;
    emit(state.copyWith(foods: listFoods));
  }

  void updateTotalBuy(int value) {
    int current = state.selectedFood!.totalBuy;
    late Food updated;
    if (value > 0) {
      //increment 1
      updated = state.selectedFood!.copyWith(totalBuy: current + 1);
      emit(state.copyWith(selectedFood: updated));
    } else {
      //increment -
      if (current > 0) {
        updated = state.selectedFood!.copyWith(totalBuy: current - 1);
        emit(state.copyWith(selectedFood: updated));
      }
    }
  }
}
