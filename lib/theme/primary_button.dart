import 'package:flutter/material.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.label, this.onPress});
  final Function()? onPress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.textPrimary,
            disabledBackgroundColor: AppColors.defaultGrey,
            textStyle: AppTextStyle.buttonPrimary14Bold()),
        onPressed: onPress,
        child: Text(label),
      ),
    );
  }
}
