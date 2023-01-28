// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kopifood/application/food_cart/food_cart_cubit.dart' as _i5;
import 'package:kopifood/application/food_cubit.dart' as _i10;
import 'package:kopifood/application/home/home_cubit.dart' as _i11;
import 'package:kopifood/domain/food/i_food_repository.dart' as _i6;
import 'package:kopifood/domain/home/i_home_repository.dart' as _i8;
import 'package:kopifood/infrastructure/food/food_repository.dart' as _i7;
import 'package:kopifood/infrastructure/home/home_repository.dart' as _i9;
import 'package:kopifood/router/app_router.dart' as _i3;

import 'infrastructure/core/firebase_module.dart' as _i12;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.singleton<_i4.FirebaseFirestore>(firebaseModule.firestore());
  gh.factory<_i5.FoodCartCubit>(() => _i5.FoodCartCubit());
  gh.lazySingleton<_i6.IFoodRepository>(
      () => _i7.FoodRepository(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IHomeRepository>(
      () => _i9.HomeRepository(gh<_i4.FirebaseFirestore>()));
  gh.factory<_i10.FoodCubit>(() => _i10.FoodCubit(gh<_i6.IFoodRepository>()));
  gh.lazySingleton<_i11.HomeCubit>(
      () => _i11.HomeCubit(gh<_i8.IHomeRepository>()));
  return getIt;
}

class _$FirebaseModule extends _i12.FirebaseModule {}
