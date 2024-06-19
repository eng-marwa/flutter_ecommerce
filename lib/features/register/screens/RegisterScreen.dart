import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/auth_divider.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_footer.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_header.dart';
import '../../../core/widgets/app_welcome_screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/SocialLogin.dart';
import '../widgets/register_footer.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 90.0.h,
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
                      WelcomeAndScreenName("Sign Up",false),
                      const RegisterForm(),
                      SizedBox(
                        height: 16.h,
                      ),
                      AuthDivider(
                        text: 'Or sign up with',
                      ),
                      SizedBox(height: 16.h),
                      const SocialLogin(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const RegisterFooter()
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
