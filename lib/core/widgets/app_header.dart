import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../themes/styles.dart';

class AppHeader extends StatelessWidget {
  AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0.h, left: 15.0.w, right: 15.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.logo.image(width: 100.w, height: 30.h),
          Text(
           'Skip'.toUpperCase(),
            style: TextStyles.font16TitleColorMedium,
          ),
        ],
      ),
    );
  }
}