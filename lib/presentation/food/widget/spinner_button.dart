import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/theme/app_colors.dart';

class SpinnerButton extends StatelessWidget {
  const SpinnerButton({Key? key, required this.icon, this.onTap})
      : super(key: key);
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: const Border.fromBorderSide(BorderSide(
              width: 1,
              color: AppColors.secondaryColor,
            ))),
        child: Icon(
          icon,
          size: 35.sp,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
