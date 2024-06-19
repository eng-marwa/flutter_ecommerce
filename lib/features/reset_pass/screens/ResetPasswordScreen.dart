import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/app_button.dart';
import 'package:flutter_ecommerce/core/widgets/app_input.dart';
import 'package:flutter_ecommerce/core/widgets/auth_divider.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_footer.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_form.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_header.dart';
import '../../../core/widgets/app_welcome_screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/reset_pass_footer.dart';
import '../widgets/reset_pass_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                child: SingleChildScrollView(
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
                      WelcomeAndScreenName("Reset Password", false),
                      verticalSpace(20),
                      ResetPasswordForm(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 18.h, horizontal: 20.w)),
                      verticalSpace(20),
                      AuthDivider(
                        text: 'Or sign in with',
                      ),
                      verticalSpace(36),
                      const ResetPasswordFooter()
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
