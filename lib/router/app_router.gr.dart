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
    FoodWrapperRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FoodWrapperPage(),
      );
    },
    FoodListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<FoodListRouteArgs>(
          orElse: () => FoodListRouteArgs(
              restaurantId: pathParams.getString('restaurantId')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FoodListPage(
          key: args.key,
          restaurantId: args.restaurantId,
        ),
      );
    },
    FoodDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FoodDetailRouteArgs>(
          orElse: () => const FoodDetailRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: FoodDetailPage(key: args.key),
        fullscreenDialog: true,
      );
    },
    FoodSummaryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FoodSummaryPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        RouteConfig(
          FoodWrapperRoute.name,
          path: '/food',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: FoodWrapperRoute.name,
              redirectTo: 'food-list:restaurantId',
              fullMatch: true,
            ),
            RouteConfig(
              FoodListRoute.name,
              path: 'food-list:restaurantId',
              parent: FoodWrapperRoute.name,
            ),
            RouteConfig(
              FoodDetailRoute.name,
              path: 'food-detail',
              parent: FoodWrapperRoute.name,
            ),
            RouteConfig(
              FoodSummaryRoute.name,
              path: 'food-summary',
              parent: FoodWrapperRoute.name,
            ),
          ],
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
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [FoodWrapperPage]
class FoodWrapperRoute extends PageRouteInfo<void> {
  const FoodWrapperRoute({List<PageRouteInfo>? children})
      : super(
          FoodWrapperRoute.name,
          path: '/food',
          initialChildren: children,
        );

  static const String name = 'FoodWrapperRoute';
}

/// generated route for
/// [FoodListPage]
class FoodListRoute extends PageRouteInfo<FoodListRouteArgs> {
  FoodListRoute({
    Key? key,
    required String restaurantId,
  }) : super(
          FoodListRoute.name,
          path: 'food-list:restaurantId',
          args: FoodListRouteArgs(
            key: key,
            restaurantId: restaurantId,
          ),
          rawPathParams: {'restaurantId': restaurantId},
        );

  static const String name = 'FoodListRoute';
}

class FoodListRouteArgs {
  const FoodListRouteArgs({
    this.key,
    required this.restaurantId,
  });

  final Key? key;

  final String restaurantId;

  @override
  String toString() {
    return 'FoodListRouteArgs{key: $key, restaurantId: $restaurantId}';
  }
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

/// generated route for
/// [FoodSummaryPage]
class FoodSummaryRoute extends PageRouteInfo<void> {
  const FoodSummaryRoute()
      : super(
          FoodSummaryRoute.name,
          path: 'food-summary',
        );

  static const String name = 'FoodSummaryRoute';
}
