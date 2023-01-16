import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle body11normal([Color? color]) => TextStyle(
        fontSize: 11.sp,
        color: color,
      );
  static TextStyle title14normal([Color? color]) => TextStyle(
        fontSize: 14.sp,
        color: color,
      );
  static TextStyle title14bold([Color? color]) => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle title16normal([Color? color]) => TextStyle(
        fontSize: 16.sp,
        color: color,
      );
  static TextStyle title16bold([Color? color]) => TextStyle(
        fontSize: 16.sp,
        color: color,
        fontWeight: FontWeight.bold,
      );
  static TextStyle title18bold([Color? color]) =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: color);
  static TextStyle buttonPrimary14Normal([Color? color]) => TextStyle(
        color: color,
        fontSize: 14.sp,
      );
  static TextStyle buttonPrimary14Bold([Color? color]) =>
      TextStyle(color: color, fontSize: 14.sp, fontWeight: FontWeight.w600);
}
