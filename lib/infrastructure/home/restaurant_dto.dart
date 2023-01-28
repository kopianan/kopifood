import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kopifood/domain/home/restaurant.dart';

part 'restaurant_dto.freezed.dart';
part 'restaurant_dto.g.dart';

@freezed
class RestaurantDto with _$RestaurantDto {
  const RestaurantDto._();
  factory RestaurantDto({
    String? name,
    String? placeName,
    String? ownerId,
    String? restaurantId,
  }) = _RestaurantDto;

  Restaurant toDomain() {
    return Restaurant(
      name: name ?? '',
      ownerId: ownerId ?? '',
      placeName: placeName ?? '',
      restaurantId: restaurantId ?? '',
    );
  }

  factory RestaurantDto.fromDomain(Restaurant restaurant) {
    return RestaurantDto(
      name: restaurant.name,
      ownerId: restaurant.ownerId,
      placeName: restaurant.placeName,
      restaurantId: restaurant.restaurantId,
    );
  }

  factory RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDtoFromJson(json);
}
