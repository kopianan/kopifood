import 'package:dartz/dartz.dart';
import 'package:kopifood/domain/home/restaurant.dart';

abstract class IHomeRepository {
  Future<Either<String, List<Restaurant>>> getAllRestaurant();
}
