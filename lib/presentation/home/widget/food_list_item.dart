import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:kopifood/utils/number_converter.dart';

class FoodListItem extends StatelessWidget with ConverterMixin {
  const FoodListItem({
    super.key,
    this.onTap,
    required this.quantityBuy,
    required this.imageUrl,
    required this.name,
    required this.price,
  });
  final Function()? onTap;
  final String name;
  final int quantityBuy;
  final String imageUrl;
  final double price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        height: 82,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    softWrap: true,
                    text: TextSpan(
                        style: quantityBuy > 0
                            ? AppTextStyle.title14bold(AppColors.textPrimary)
                            : AppTextStyle.title14normal(
                                AppColors.defaultBlack),
                        children: [
                          TextSpan(
                              text: quantityBuy == 0 ? '' : '${quantityBuy}x'),
                          TextSpan(text: quantityBuy == 0 ? '' : ' '),
                          TextSpan(text: name)
                        ]),
                  ),
                  5.verticalSpace,
                  Text(
                    "Tidak ada catatan makanan. Next time akan di update yah gaes. maksimal 2 line aja",
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.body11normal(AppColors.defaultGrey),
                  )
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              convertDoubleToPrice(price),
              style: AppTextStyle.title14bold(
                quantityBuy > 0
                    ? AppColors.textPrimary
                    : AppColors.defaultBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
