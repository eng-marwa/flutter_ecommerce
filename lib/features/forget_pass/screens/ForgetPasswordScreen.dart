import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_header.dart';
import '../../../core/widgets/app_welcome_screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/forget_pass_footer.dart';
import '../widgets/forget_pass_form.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 100.0.h,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Assets.images.design.svg(),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15.h, right: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: AppHeader(),
                        ),
                      ],
                    ),
                    WelcomeAndScreenName("Forget Password", false),
                    const ForgetPasswordForm(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ForgetPasswordFooter()
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
