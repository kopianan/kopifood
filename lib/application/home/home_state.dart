part of 'home_cubit.dart';

enum HomeStatus { loading, error, initial, success }

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Restaurant> restaurantList,
    @Default(HomeStatus.initial) HomeStatus homeStatus,
    Restaurant? selectedRestaurant,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(restaurantList: []);
}
