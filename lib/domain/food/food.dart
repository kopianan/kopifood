import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';

@freezed
class Food with _$Food {
  const Food._();

  const factory Food({
    required String id,
    required List<String> foodImages,
    required String name,
    required double price,
    required String notes,
    int? quantity,
    required int totalBuy,
  }) = _Food;
}
