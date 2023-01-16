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
  //get all order data ;

  void submitPrePayOrder() {
    final allFood =
        state.foods.where((element) => element.totalBuy > 0).toList();
    emit(state.copyWith(confirmedOrder: allFood));
    // allFood
  }

  //Function
  bool anyFood() {
    final boughtItems =
        state.foods.where((element) => element.totalBuy > 0).length;
    if (boughtItems == 0) {
      return false;
    } else {
      return true;
    }
  }

  double calculateSubTotal() {
    double total = 0;
    if (state.confirmedOrder.isNotEmpty) {
      for (var element in state.confirmedOrder) {
        total += element.price * element.totalBuy;
      }
    }
    return total;
  }

  double calculatePPNTotal({double ppn = 0.11}) {
    return calculateSubTotal() * ppn;
  }

  double calculateGrandTotal({double ppn = 0.11}) {
    return calculateSubTotal() + calculatePPNTotal();
  }

  double calculateTotal() {
    final boughtItems = state.foods.where((element) => element.totalBuy > 0);
    double total = 0;
    for (var element in boughtItems) {
      final price = element.price;
      final qty = element.totalBuy;
      total += price * qty;
    }
    return total;
  }
}
