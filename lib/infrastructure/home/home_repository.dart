import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/domain/home/i_home_repository.dart';
import 'package:kopifood/domain/home/restaurant.dart';
import 'package:kopifood/infrastructure/core/firestore_helpers.dart';
import 'package:kopifood/infrastructure/home/restaurant_dto.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  HomeRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  
  @override
  Future<Either<String, List<Restaurant>>> getAllRestaurant() async {
    final result = await _firebaseFirestore.getRestaurantCollection.get();

    final restaurantList = result.docs
        .map((e) => RestaurantDto.fromJson(e.data() as dynamic).toDomain())
        .toList();

    return right(restaurantList);
  }
}
