import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/injection.dart';

class FoodWrapperPage extends StatelessWidget {
  const FoodWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FoodCartCubit>(),
      child: const AutoRouter(),
    );
  }
}
