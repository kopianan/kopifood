// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    FoodDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FoodDetailRouteArgs>(
          orElse: () => const FoodDetailRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FoodDetailPage(key: args.key),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          FoodDetailRoute.name,
          path: 'food-detail',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [FoodDetailPage]
class FoodDetailRoute extends PageRouteInfo<FoodDetailRouteArgs> {
  FoodDetailRoute({Key? key})
      : super(
          FoodDetailRoute.name,
          path: 'food-detail',
          args: FoodDetailRouteArgs(key: key),
        );

  static const String name = 'FoodDetailRoute';
}

class FoodDetailRouteArgs {
  const FoodDetailRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FoodDetailRouteArgs{key: $key}';
  }
}
