// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDto _$$_RestaurantDtoFromJson(Map<String, dynamic> json) =>
    _$_RestaurantDto(
      name: json['name'] as String?,
      placeName: json['placeName'] as String?,
      ownerId: json['ownerId'] as String?,
      restaurantId: json['restaurantId'] as String?,
    );

Map<String, dynamic> _$$_RestaurantDtoToJson(_$_RestaurantDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'placeName': instance.placeName,
      'ownerId': instance.ownerId,
      'restaurantId': instance.restaurantId,
    };
