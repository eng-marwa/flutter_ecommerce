import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class TextWithBackground extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  TextWithBackground({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.0.h),
      color: backgroundColor,
      child: Text(
        text,
        style: TextStyles.font12TextColorRegular,
      ),
    );
  }
}