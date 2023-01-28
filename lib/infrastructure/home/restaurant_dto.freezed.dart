// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDto _$RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _RestaurantDto.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDto {
  String? get name => throw _privateConstructorUsedError;
  String? get placeName => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  String? get restaurantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDtoCopyWith<RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDtoCopyWith<$Res> {
  factory $RestaurantDtoCopyWith(
          RestaurantDto value, $Res Function(RestaurantDto) then) =
      _$RestaurantDtoCopyWithImpl<$Res, RestaurantDto>;
  @useResult
  $Res call(
      {String? name, String? placeName, String? ownerId, String? restaurantId});
}

/// @nodoc
class _$RestaurantDtoCopyWithImpl<$Res, $Val extends RestaurantDto>
    implements $RestaurantDtoCopyWith<$Res> {
  _$RestaurantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? placeName = freezed,
    Object? ownerId = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantDtoCopyWith<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  factory _$$_RestaurantDtoCopyWith(
          _$_RestaurantDto value, $Res Function(_$_RestaurantDto) then) =
      __$$_RestaurantDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? placeName, String? ownerId, String? restaurantId});
}

/// @nodoc
class __$$_RestaurantDtoCopyWithImpl<$Res>
    extends _$RestaurantDtoCopyWithImpl<$Res, _$_RestaurantDto>
    implements _$$_RestaurantDtoCopyWith<$Res> {
  __$$_RestaurantDtoCopyWithImpl(
      _$_RestaurantDto _value, $Res Function(_$_RestaurantDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? placeName = freezed,
    Object? ownerId = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_$_RestaurantDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantDto extends _RestaurantDto {
  _$_RestaurantDto({this.name, this.placeName, this.ownerId, this.restaurantId})
      : super._();

  factory _$_RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDtoFromJson(json);

  @override
  final String? name;
  @override
  final String? placeName;
  @override
  final String? ownerId;
  @override
  final String? restaurantId;

  @override
  String toString() {
    return 'RestaurantDto(name: $name, placeName: $placeName, ownerId: $ownerId, restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, placeName, ownerId, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantDtoCopyWith<_$_RestaurantDto> get copyWith =>
      __$$_RestaurantDtoCopyWithImpl<_$_RestaurantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDtoToJson(
      this,
    );
  }
}

abstract class _RestaurantDto extends RestaurantDto {
  factory _RestaurantDto(
      {final String? name,
      final String? placeName,
      final String? ownerId,
      final String? restaurantId}) = _$_RestaurantDto;
  _RestaurantDto._() : super._();

  factory _RestaurantDto.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDto.fromJson;

  @override
  String? get name;
  @override
  String? get placeName;
  @override
  String? get ownerId;
  @override
  String? get restaurantId;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDtoCopyWith<_$_RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}
