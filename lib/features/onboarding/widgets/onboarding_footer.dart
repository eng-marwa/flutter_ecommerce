import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/app_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/styles.dart';
class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Column(
        children: [
          AppButton(title: 'Start Shopping'),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: TextStyles.font14TextColor),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyles.font14TextColorUnderline,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
