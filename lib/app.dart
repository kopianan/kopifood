import 'package:flutter/material.dart';
import 'package:kopifood/router/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Kopi Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
