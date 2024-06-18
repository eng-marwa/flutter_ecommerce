import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

class TextStyles {
  static TextStyle font14TextColorUnderlineSemiBold = TextStyle(
      color: ColorName.colorText,
      decoration: TextDecoration.underline,
      fontSize: 14.sp,fontWeight: FontWeightHelper.semiBold);

static TextStyle font14TitleColorUnderlineSemiBold = TextStyle(
      color: ColorName.colorTitle,
      decoration: TextDecoration.underline,
      fontSize: 14.sp, fontWeight: FontWeightHelper.semiBold);

  static TextStyle font14TextColorSemiBold = TextStyle(
      color: ColorName.colorText,
      fontSize: 14.sp, fontWeight: FontWeightHelper.semiBold);

  static TextStyle font12TextColorRegular = TextStyle(
      color: ColorName.colorText,
      fontSize: 12.sp,fontWeight: FontWeightHelper.regular);

  static TextStyle font16TitleColorMedium = TextStyle(
      fontSize: 16.sp,
      color: ColorName.colorTitle,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font25TitleColorSemiBold= TextStyle(  fontSize: 25.sp,
      color: ColorName.colorTitle,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font14PrimaryColorRegular = TextStyle(  fontSize: 14.sp,
      color: ColorName.colorPrimary,
      fontWeight: FontWeightHelper.regular);
}
