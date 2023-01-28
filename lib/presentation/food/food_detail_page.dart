import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/theme/primary_button.dart';
import 'package:kopifood/utils/number_converter.dart';

import 'widget/spinner_button.dart';

class FoodDetailPage extends StatelessWidget with ConverterMixin {
  FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCartCubit, FoodCartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.ios_share))
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                    child: CarouselSlider(
                        options: CarouselOptions(
                          disableCenter: true,
                          aspectRatio: 2,
                          enableInfiniteScroll: true,
                        ),
                        items: state.selectedFood?.foodImages
                            .map(
                              (item) => Container(
                                width: double.infinity,
                                child: ClipRRect(
                                  child: Image.network(
                                    item,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                            .toList())),
                10.verticalSpace,
                ListTile(
                    title: Text(
                      state.selectedFood!.name,
                      style: AppTextStyle.title16bold(AppColors.textPrimary),
                    ),
                    trailing: Text(
                      convertDoubleToPrice(state.selectedFood!.price),
                      style: AppTextStyle.title16bold(AppColors.textPrimary),
                    ),
                    subtitle: Text(
                      state.selectedFood?.notes ?? "",
                      style: AppTextStyle.body11normal(),
                    )),
                const Divider(thickness: 1),
                30.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinnerButton(
                      icon: Icons.remove,
                      onTap: () {
                        context.read<FoodCartCubit>().updateTotalBuy(-1);
                      },
                    ),
                    20.horizontalSpace,
                    Text(
                      state.selectedFood!.totalBuy.toString(),
                      style: AppTextStyle.title18bold(AppColors.textPrimary),
                    ),
                    20.horizontalSpace,
                    SpinnerButton(
                      icon: Icons.add,
                      onTap: () {
                        context.read<FoodCartCubit>().updateTotalBuy(1);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          persistentFooterAlignment: AlignmentDirectional.center,
          persistentFooterButtons: [
            PrimaryButton(
                onPress: () {
                  //update to basket means update the selected food to list of all item
                  context.read<FoodCartCubit>().updateToBasket();
                  AutoRouter.of(context).pop(true);
                },
                label:
                    "Update Keranjang (${convertDoubleToPrice(state.selectedFood!.totalBuy * state.selectedFood!.price)})")
          ],
        );
      },
    );
  }
}
