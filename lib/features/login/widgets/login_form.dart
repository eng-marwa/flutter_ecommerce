import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_ecommerce/utils/extensions/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      AppInput(obscureText: false,labelText: 'Username or Email',),
      SizedBox(
        height: 16.h,
      ),
      AppInput(obscureText: true,labelText: 'Password',),
      SizedBox(
        height: 9.h,
      ),
      Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Handle forgot password
            },
            child:  Text(
              'Forgot Password?',
              style: TextStyles.font14SemiBoldPrimaryColorRegular
            ),
          )),
      SizedBox(
        height: 43.h,
      ),
      AppButton(
        title: 'SIGN IN',
        onClick: () {}
      )
    ]));
  }
}
