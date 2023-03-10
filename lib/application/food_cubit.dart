import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/domain/food/food.dart';
import 'package:kopifood/domain/food/i_food_repository.dart';

part 'food_state.dart';
part 'food_cubit.freezed.dart';

@injectable
class FoodCubit extends Cubit<FoodState> {
  FoodCubit(this.iFoodRepository) : super(const FoodState.initial());
  final IFoodRepository iFoodRepository;

  void getFood(String? restaurantId) async {
    final result = await iFoodRepository.getAllFood(restaurantId!);
    result.fold(
      (l) => emit(const FoodState.loading()),
      (r) => emit(FoodState.onGetAllFood(r)),
    );
  }
}
