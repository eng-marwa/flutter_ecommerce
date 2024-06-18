import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/onboarding/model/Onboarding.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';
import '../../../gen/assets.gen.dart';

class OnboardingHeader extends StatelessWidget {
  Onboarding model;

  OnboardingHeader(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0.h, left: 15.0.w, right: 15.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.logo.image(width: 100.w, height: 30.h),
          Text(
            model.lastPage ? 'Done'.toUpperCase() : 'Skip'.toUpperCase(),
            style: TextStyles.font16TitleColor500Weight,
          ),
        ],
      ),
    );
  }
}
