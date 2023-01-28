// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodDto _$FoodDtoFromJson(Map<String, dynamic> json) {
  return _FoodDto.fromJson(json);
}

/// @nodoc
mixin _$FoodDto {
  String get foodId => throw _privateConstructorUsedError;
  List<String> get foodImages => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodDtoCopyWith<FoodDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDtoCopyWith<$Res> {
  factory $FoodDtoCopyWith(FoodDto value, $Res Function(FoodDto) then) =
      _$FoodDtoCopyWithImpl<$Res, FoodDto>;
  @useResult
  $Res call(
      {String foodId,
      List<String> foodImages,
      String name,
      double price,
      int? quantity,
      String? notes});
}

/// @nodoc
class _$FoodDtoCopyWithImpl<$Res, $Val extends FoodDto>
    implements $FoodDtoCopyWith<$Res> {
  _$FoodDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodImages = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodDtoCopyWith<$Res> implements $FoodDtoCopyWith<$Res> {
  factory _$$_FoodDtoCopyWith(
          _$_FoodDto value, $Res Function(_$_FoodDto) then) =
      __$$_FoodDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String foodId,
      List<String> foodImages,
      String name,
      double price,
      int? quantity,
      String? notes});
}

/// @nodoc
class __$$_FoodDtoCopyWithImpl<$Res>
    extends _$FoodDtoCopyWithImpl<$Res, _$_FoodDto>
    implements _$$_FoodDtoCopyWith<$Res> {
  __$$_FoodDtoCopyWithImpl(_$_FoodDto _value, $Res Function(_$_FoodDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodImages = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_FoodDto(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodDto extends _FoodDto {
  _$_FoodDto(
      {required this.foodId,
      required final List<String> foodImages,
      required this.name,
      required this.price,
      this.quantity,
      this.notes})
      : _foodImages = foodImages,
        super._();

  factory _$_FoodDto.fromJson(Map<String, dynamic> json) =>
      _$$_FoodDtoFromJson(json);

  @override
  final String foodId;
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
  final String? notes;

  @override
  String toString() {
    return 'FoodDto(foodId: $foodId, foodImages: $foodImages, name: $name, price: $price, quantity: $quantity, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodDto &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            const DeepCollectionEquality()
                .equals(other._foodImages, _foodImages) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foodId,
      const DeepCollectionEquality().hash(_foodImages),
      name,
      price,
      quantity,
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodDtoCopyWith<_$_FoodDto> get copyWith =>
      __$$_FoodDtoCopyWithImpl<_$_FoodDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodDtoToJson(
      this,
    );
  }
}

abstract class _FoodDto extends FoodDto {
  factory _FoodDto(
      {required final String foodId,
      required final List<String> foodImages,
      required final String name,
      required final double price,
      final int? quantity,
      final String? notes}) = _$_FoodDto;
  _FoodDto._() : super._();

  factory _FoodDto.fromJson(Map<String, dynamic> json) = _$_FoodDto.fromJson;

  @override
  String get foodId;
  @override
  List<String> get foodImages;
  @override
  String get name;
  @override
  double get price;
  @override
  int? get quantity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_FoodDtoCopyWith<_$_FoodDto> get copyWith =>
      throw _privateConstructorUsedError;
}
