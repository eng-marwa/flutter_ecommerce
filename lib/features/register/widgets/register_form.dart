import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      AppInput(
        obscureText: false,type: TextInputType.emailAddress,
        labelText: 'Username or Email',
      ),
      SizedBox(
        height: 16.h,
      ),
      AppInput(
        obscureText: false,
        labelText: 'Phone Number',type: TextInputType.phone,
      ),
      SizedBox(
        height: 16.h,
      ),
      AppInput(
        obscureText: true,
        labelText: 'Password',type: TextInputType.visiblePassword,
      ),
      SizedBox(
        height: 16.h,
      ),
      AppInput(
        obscureText: true,
        labelText: 'Confirm Password',type: TextInputType.visiblePassword,
      ),
      SizedBox(
        height: 30.h,
      ),
      AppButton(
        title: 'SIGN IN',
        onClick: () {},
      )
    ]));
  }
}
