import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_ecommerce/features/onboarding/model/Onboarding.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class OnboardingBody extends StatelessWidget {
  Onboarding model;

  OnboardingBody(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(left: 64.w, top: 61.h),
            child: model.image),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 30.h),
          child: Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  model.body,
                  style: TextStyles.font14TextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
