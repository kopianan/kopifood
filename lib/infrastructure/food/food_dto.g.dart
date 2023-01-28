// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodDto _$$_FoodDtoFromJson(Map<String, dynamic> json) => _$_FoodDto(
      foodId: json['foodId'] as String,
      foodImages: (json['foodImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$_FoodDtoToJson(_$_FoodDto instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'foodImages': instance.foodImages,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'notes': instance.notes,
    };
