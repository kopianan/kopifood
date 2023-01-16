import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/spinner_button.dart';

class FoodDetailPage extends StatelessWidget {
  FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCartCubit, FoodCartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                  child: CarouselSlider(
                      options: CarouselOptions(
                        disableCenter: false,
                        enlargeFactor: 0.8,
                        aspectRatio: 2,
                        enableInfiniteScroll: false,
                      ),
                      items: state.selectedFood?.foodImages
                          .map(
                            (item) => Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                                child: Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList())),
              10.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Text(
                        state.selectedFood!.name,
                        style: AppTextStyle.title16bold,
                      )),
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          state.selectedFood!.price.toString(),
                          style: AppTextStyle.title16bold,
                        ),
                      )),
                ],
              ),
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
                    style: AppTextStyle.title18bold,
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
          persistentFooterAlignment: AlignmentDirectional.center,
          persistentFooterButtons: [
            SizedBox(
              width: ScreenUtil().screenWidth,
              child: ElevatedButton(
                  onPressed: () async {
                    //update to basket means update the selected food to list of all item
                    context.read<FoodCartCubit>().updateToBasket();
                    AutoRouter.of(context).pop(true);
                  },
                  child: Text(
                      "Update Basket ${state.selectedFood!.totalBuy * state.selectedFood!.price}")),
            )
          ],
        );
      },
    );
  }
}
