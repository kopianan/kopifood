import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/domain/home/i_home_repository.dart';
import 'package:kopifood/domain/home/restaurant.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@LazySingleton()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.iHomeRepository) : super(HomeState.initial());
  IHomeRepository iHomeRepository;

  void setSelectedRestaurant(Restaurant store) {
    emit(state.copyWith(selectedRestaurant: store));
  }

  void getAllRestaurant() async {
    emit(state.copyWith(homeStatus: HomeStatus.loading));
    final result = await iHomeRepository.getAllRestaurant();
    result.fold(
      (l) => emit(state.copyWith(
        homeStatus: HomeStatus.error,
      )),
      (r) => emit(
        state.copyWith(
          restaurantList: r,
          homeStatus: HomeStatus.success,
        ),
      ),
    );
  }
}
