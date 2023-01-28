// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<Restaurant> get restaurantList => throw _privateConstructorUsedError;
  HomeStatus get homeStatus => throw _privateConstructorUsedError;
  Restaurant? get selectedRestaurant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Restaurant> restaurantList,
      HomeStatus homeStatus,
      Restaurant? selectedRestaurant});

  $RestaurantCopyWith<$Res>? get selectedRestaurant;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? homeStatus = null,
    Object? selectedRestaurant = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantList: null == restaurantList
          ? _value.restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      selectedRestaurant: freezed == selectedRestaurant
          ? _value.selectedRestaurant
          : selectedRestaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res>? get selectedRestaurant {
    if (_value.selectedRestaurant == null) {
      return null;
    }

    return $RestaurantCopyWith<$Res>(_value.selectedRestaurant!, (value) {
      return _then(_value.copyWith(selectedRestaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Restaurant> restaurantList,
      HomeStatus homeStatus,
      Restaurant? selectedRestaurant});

  @override
  $RestaurantCopyWith<$Res>? get selectedRestaurant;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? homeStatus = null,
    Object? selectedRestaurant = freezed,
  }) {
    return _then(_$_HomeState(
      restaurantList: null == restaurantList
          ? _value._restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      selectedRestaurant: freezed == selectedRestaurant
          ? _value.selectedRestaurant
          : selectedRestaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {final List<Restaurant> restaurantList = const [],
      this.homeStatus = HomeStatus.initial,
      this.selectedRestaurant})
      : _restaurantList = restaurantList;

  final List<Restaurant> _restaurantList;
  @override
  @JsonKey()
  List<Restaurant> get restaurantList {
    if (_restaurantList is EqualUnmodifiableListView) return _restaurantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurantList);
  }

  @override
  @JsonKey()
  final HomeStatus homeStatus;
  @override
  final Restaurant? selectedRestaurant;

  @override
  String toString() {
    return 'HomeState(restaurantList: $restaurantList, homeStatus: $homeStatus, selectedRestaurant: $selectedRestaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._restaurantList, _restaurantList) &&
            (identical(other.homeStatus, homeStatus) ||
                other.homeStatus == homeStatus) &&
            (identical(other.selectedRestaurant, selectedRestaurant) ||
                other.selectedRestaurant == selectedRestaurant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_restaurantList),
      homeStatus,
      selectedRestaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final List<Restaurant> restaurantList,
      final HomeStatus homeStatus,
      final Restaurant? selectedRestaurant}) = _$_HomeState;

  @override
  List<Restaurant> get restaurantList;
  @override
  HomeStatus get homeStatus;
  @override
  Restaurant? get selectedRestaurant;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
