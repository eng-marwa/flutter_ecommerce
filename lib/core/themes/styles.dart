import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/colors.gen.dart';

class TextStyles {
  static TextStyle font14TextColorUnderline = TextStyle(
      color: ColorName.colorText,
      decoration: TextDecoration.underline,
      fontSize: 14.sp);

  static TextStyle font14TextColor = TextStyle(
      color: ColorName.colorText,
      fontSize: 14.sp);

  static TextStyle font16TitleColor500Weight = TextStyle(
      fontSize: 16.sp,
      color: ColorName.colorTitle,
      fontWeight: FontWeight.w500);
}
