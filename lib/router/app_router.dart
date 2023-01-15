import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kopifood/presentation/home/home_page.dart';
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
      page: HomePage,
      // path: '/home',
      path: '/', initial: true,
    ),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
