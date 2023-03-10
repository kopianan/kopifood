import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/application/food_cubit.dart';
import 'package:kopifood/application/home/home_cubit.dart';
import 'package:kopifood/injection.dart';
import 'package:kopifood/presentation/food/widget/food_list_item.dart';
import 'package:kopifood/router/app_router.dart';
import 'package:kopifood/theme/primary_button.dart';
import 'package:kopifood/utils/number_converter.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({
    super.key,
    @PathParam('restaurantId') required this.restaurantId,
  });
  final String restaurantId;
  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> with ConverterMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final foodCartCubit = context.read<FoodCartCubit>();
    return BlocProvider(
      create: (context) => getIt<FoodCubit>()..getFood(widget.restaurantId),
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
                    leading: IconButton(
                      onPressed: (){
                        AutoRouter.of(context).pop(); 
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    title: const Text("Selamat Datang"),
                  ),
                  body: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: state.maybeMap(
                      orElse: () {
                        return const SizedBox();
                      },
                      onGetAllFood: (value) {
                        return ListView.builder(
                          itemCount: cartState.foods.length,
                          itemBuilder: (context, index) {
                            final singleItem = cartState.foods[index];
                            return FoodListItem(
                                onTap: () async {
                                  foodCartCubit.setSelectedFood(singleItem);
                                  final ifFinish = await context.router
                                      .navigate(FoodDetailRoute());
                                  if (ifFinish == true) {
                                    foodCartCubit.setSelectedFood(null);
                                  }
                                },
                                notes: singleItem.notes,
                                quantityBuy: singleItem.totalBuy,
                                imageUrl: singleItem.foodImages.first,
                                name: singleItem.name,
                                price: singleItem.price);
                          },
                        );
                      },
                    ),
                  ),
                  persistentFooterButtons: context
                          .read<FoodCartCubit>()
                          .anyFood()
                      ? [
                          PrimaryButton(
                            label:
                                "Lanjutkan ( ${convertDoubleToPrice(foodCartCubit.calculateTotal())} )",
                            onPress: () {
                              context.read<FoodCartCubit>().submitPrePayOrder();
                              context.router.navigate(const FoodSummaryRoute());
                            },
                          )
                        ]
                      : null);
            },
          );
        },
      ),
    );
  }
}
