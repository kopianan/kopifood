import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/domain/food/food.dart';
import 'package:dartz/dartz.dart';
import 'package:kopifood/domain/food/i_food_repository.dart';
import 'package:kopifood/infrastructure/core/firestore_helpers.dart';
import 'package:kopifood/infrastructure/food/food_dto.dart';

@LazySingleton(as: IFoodRepository)
class FoodRepository implements IFoodRepository {
  final FirebaseFirestore _firestore;

  FoodRepository(this._firestore);

  @override
  Future<Either<String, List<Food>>> getAllFood(String storeDocId) async {
    final foods =
        await _firestore.getStoresById(storeDocId).getFoodsCollection().get();
    final listFoods = foods.docs
        .map((item) => FoodDto.fromJson(item.data() as dynamic).toDomain())
        .toList(); 
    return right(listFoods);
  }
}
