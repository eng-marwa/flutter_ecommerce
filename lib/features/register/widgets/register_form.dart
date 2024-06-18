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
        obscureText: false,
        labelText: 'Username or Email',
      ),
      SizedBox(
        height: 16.h,
      ),
      AppInput(
        obscureText: true,
        labelText: 'Password',
      ),
      SizedBox(
        height: 16.h,
      ),
      AppInput(
        obscureText: true,
        labelText: 'Password',
      ),
      SizedBox(
        height: 9.h,
      ),
      SizedBox(
        height: 40.h,
      ),
      AppButton(
        title: 'SIGN IN',
        onClick: () {},
      )
    ]));
  }
}
