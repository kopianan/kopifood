import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/application/food_cubit.dart';
import 'package:kopifood/injection.dart';
import 'package:kopifood/presentation/home/widget/food_list_item.dart';
import 'package:kopifood/router/app_router.dart';
import 'package:kopifood/theme/app_text_style.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({super.key});

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FoodCubit>()..getFood(),
      child: BlocBuilder<FoodCartCubit, FoodCartState>(
        builder: (context, cartState) {
          return BlocConsumer<FoodCubit, FoodState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                onGetAllFood: (e) {
                  context.read<FoodCartCubit>().setFoods(e.foods);
                },
              );
            },
            builder: (context, state) {
              return Scaffold(
                  appBar: AppBar(
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_rounded))
                    ],
                  ),
                  body: state.maybeMap(
                    orElse: () {
                      return SizedBox();
                    },
                    onGetAllFood: (value) {
                      return ListView.builder(
                        itemCount: cartState.foods.length,
                        itemBuilder: (context, index) {
                          final singleItem = cartState.foods[index];
                          return FoodListItem(
                              onTap: () async {
                                context
                                    .read<FoodCartCubit>()
                                    .setSelectedFood(singleItem);
                                final ifFinish = await context.router
                                    .navigate(FoodDetailRoute());
                                if (ifFinish == true) {
                                  context
                                      .read<FoodCartCubit>()
                                      .setSelectedFood(null);
                                }
                              },
                              quantityBuy: singleItem.totalBuy,
                              imageUrl: singleItem.foodImages.first,
                              name: singleItem.name,
                              price: singleItem.price);
                        },
                      );
                    },
                  ));
            },
          );
        },
      ),
    );
  }
}
