import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/onboarding/model/Onboarding.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../widgets/onboarding_body.dart';
import '../widgets/onboarding_footer.dart';
import '../widgets/onboarding_header.dart';

class OnboardingScreen extends StatelessWidget {
  Onboarding model;
  OnboardingScreen(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 35.0.h),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Assets.images.design.svg(),
              ),
               Column(
                children: [
                   Stack(
                    children: [
                      Positioned(
                        child: OnboardingHeader(model),
                      ),
                    ],
                  ),
                  OnboardingBody(model),
                  verticalSpace(20),
                  model.pageIndicator!,
                  verticalSpace(20),
                  const OnboardingFooter()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}