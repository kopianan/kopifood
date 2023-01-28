import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/router/app_router.dart';
import 'package:kopifood/theme/app_colors.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(400, 700),
      builder: (context, widget) => MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Kopi Food',
        theme: ThemeData(
            iconTheme: const IconThemeData(color: AppColors.foregroundColor),
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.secondaryColor,
              foregroundColor: AppColors.foregroundColor,
            )),
      ),
    );
  }
}
