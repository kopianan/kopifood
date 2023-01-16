import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/presentation/home/food_detail_page.dart';
import 'package:kopifood/presentation/home/food_list_page.dart';
import 'package:kopifood/presentation/home/food_wrapper_page.dart';
import 'package:kopifood/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      // path: '/',
    ),
    AutoRoute(
      path: "/food",
      initial: true,
      page: FoodWrapperPage,
      children: [
        AutoRoute(
          page: FoodListPage,
          path: 'food-list',
          initial: true,
        ),
        AutoRoute(
          page: FoodDetailPage,
          fullscreenDialog: true,
          path: 'food-detail',
        ),
      ],
    ),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
