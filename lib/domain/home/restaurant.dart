import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant.freezed.dart';

@freezed
class Restaurant with _$Restaurant {
  const Restaurant._();

  const factory Restaurant({
    required String name,
    required String restaurantId,
    required String placeName,
    required String ownerId,
  }) = _Restaurant;
}
