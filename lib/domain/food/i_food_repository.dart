import 'package:dartz/dartz.dart';
import 'package:kopifood/domain/food/food.dart';

abstract class IFoodRepository {
  Future<Either<String, List<Food>>> getAllFood(String storeDocId);
  // Future<Either<String, Food>> getStoreData(String storeDocId);
}
