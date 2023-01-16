import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';

class FoodSummaryListItem extends StatelessWidget {
  const FoodSummaryListItem(
      {super.key,
      required this.name,
      this.notes = "Tidak ada catatan",
      required this.price,
      required this.qty});
  final int qty;
  final String name;
  final String? notes;
  //convertedPrice
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: AppColors.secondaryColor),
                ),
                child: Text(
                  qty.toString(),
                  style: AppTextStyle.title14normal(),
                )),
            10.horizontalSpace,
            Text(
              "x",
              style: AppTextStyle.title14bold(),
            ),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.title14normal(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  5.verticalSpace,
                  Text(notes ?? "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.body11normal(
                        AppColors.defaultGrey,
                      )),
                ],
              ),
            ),
            Text(
              price,
              style: AppTextStyle.title14bold(AppColors.secondaryColor),
            )
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
