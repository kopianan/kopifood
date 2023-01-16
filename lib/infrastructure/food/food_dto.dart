import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kopifood/domain/food/food.dart';

part 'food_dto.freezed.dart';
part 'food_dto.g.dart';

@freezed
abstract class FoodDto with _$FoodDto {
  const FoodDto._();
  factory FoodDto({
    required String foodId,
    required List<String> foodImages,
    required String name,
    required double price,
    int? quantity,
  }) = _FoodDto;

  Food toDomain() {
    return Food(
      id: foodId,
      foodImages: foodImages,
      name: name,
      price: price,
      quantity: quantity,
      totalBuy: 0,
    );
  }

  factory FoodDto.fromJson(Map<String, dynamic> json) =>
      _$FoodDtoFromJson(json);
}
