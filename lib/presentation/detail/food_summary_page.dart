import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/application/food_cart/food_cart_cubit.dart';
import 'package:kopifood/presentation/detail/widget/food_summary_list_item.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:kopifood/theme/primary_button.dart';
import 'package:kopifood/utils/number_converter.dart';

class FoodSummaryPage extends StatefulWidget {
  const FoodSummaryPage({super.key});

  @override
  State<FoodSummaryPage> createState() => _FoodSummaryPageState();
}

class _FoodSummaryPageState extends State<FoodSummaryPage> with ConverterMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCartCubit, FoodCartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Container(
              height: ScreenUtil().screenHeight,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.verticalSpace,
                  Text(
                    "Order Summary",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  15.verticalSpace,
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.confirmedOrder.length,
                      itemBuilder: (context, index) {
                        final singleItem = state.confirmedOrder[index];
                        return FoodSummaryListItem(
                          name: singleItem.name,
                          price: convertDoubleToPrice(singleItem.price),
                          qty: singleItem.totalBuy,
                        );
                      }),
                  Divider(
                    thickness: 2,
                    color: AppColors.defaultGrey,
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      SummaryDetailWidget(
                        label: "Order",
                        value: convertDoubleToPrice(
                            context.read<FoodCartCubit>().calculateSubTotal()),
                      ),
                      10.verticalSpace,
                      SummaryDetailWidget(
                        label: "PPN 11%",
                        value: convertDoubleToPrice(
                            context.read<FoodCartCubit>().calculatePPNTotal()),
                      )
                    ],
                  ),
                  20.verticalSpace,
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      convertDoubleToPrice(
                          context.read<FoodCartCubit>().calculateGrandTotal()),
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          persistentFooterButtons: [
            PrimaryButton(
              label: "Submit Order",
              // onPress: () {},
            )
          ],
        );
      },
    );
  }
}

class SummaryDetailWidget extends StatelessWidget {
  const SummaryDetailWidget(
      {Key? key, required this.label, required this.value})
      : super(key: key);
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: AppTextStyle.title14bold(
            AppColors.defaultGrey,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: AppTextStyle.title14bold(
            AppColors.defaultGrey,
          ),
        ),
      ],
    );
  }
}
