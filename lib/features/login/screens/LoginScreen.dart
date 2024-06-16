import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/app_button.dart';
import 'package:flutter_ecommerce/core/widgets/app_input.dart';
import 'package:flutter_ecommerce/features/login/widgets/auth_divider.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_footer.dart';
import 'package:flutter_ecommerce/features/login/widgets/login_form.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_header.dart';
import '../../../core/widgets/app_welcome_screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/SocialLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      WelcomeAndScreenName("Login Now"),
                      const LoginForm(),
                      SizedBox(
                        height: 20.h,
                      ),
                      AuthDivider(
                        text: 'Or sign in with',
                      ),
                      SizedBox(height: 20.h),
                      const SocialLogin(),
                      SizedBox(
                        height: 36.h,
                      ),
                      const LoginFooter()
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
