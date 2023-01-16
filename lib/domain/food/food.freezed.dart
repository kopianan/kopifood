// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  List<String> get foodImages => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int get totalBuy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String id,
      List<String> foodImages,
      String name,
      double price,
      int? quantity,
      int totalBuy});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodImages = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? totalBuy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      foodImages: null == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBuy: null == totalBuy
          ? _value.totalBuy
          : totalBuy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> foodImages,
      String name,
      double price,
      int? quantity,
      int totalBuy});
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res, _$_Food>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodImages = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? totalBuy = null,
  }) {
    return _then(_$_Food(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      foodImages: null == foodImages
          ? _value._foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBuy: null == totalBuy
          ? _value.totalBuy
          : totalBuy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Food extends _Food {
  const _$_Food(
      {required this.id,
      required final List<String> foodImages,
      required this.name,
      required this.price,
      this.quantity,
      required this.totalBuy})
      : _foodImages = foodImages,
        super._();

  @override
  final String id;
  final List<String> _foodImages;
  @override
  List<String> get foodImages {
    if (_foodImages is EqualUnmodifiableListView) return _foodImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodImages);
  }

  @override
  final String name;
  @override
  final double price;
  @override
  final int? quantity;
  @override
  final int totalBuy;

  @override
  String toString() {
    return 'Food(id: $id, foodImages: $foodImages, name: $name, price: $price, quantity: $quantity, totalBuy: $totalBuy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._foodImages, _foodImages) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalBuy, totalBuy) ||
                other.totalBuy == totalBuy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_foodImages),
      name,
      price,
      quantity,
      totalBuy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);
}

abstract class _Food extends Food {
  const factory _Food(
      {required final String id,
      required final List<String> foodImages,
      required final String name,
      required final double price,
      final int? quantity,
      required final int totalBuy}) = _$_Food;
  const _Food._() : super._();

  @override
  String get id;
  @override
  List<String> get foodImages;
  @override
  String get name;
  @override
  double get price;
  @override
  int? get quantity;
  @override
  int get totalBuy;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}