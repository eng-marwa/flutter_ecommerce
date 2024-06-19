import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';
import '../../../utils/extensions/Spacing.dart';

class RegisterForm extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
   RegisterForm({this.contentPadding,super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      AppInput(isPassword: false,
        labelText: 'Username or Email',contentPadding: contentPadding,
      ),
      verticalSpace(16),
      AppInput(isPassword: true,
        labelText: 'Password',contentPadding: contentPadding,
      ),
      verticalSpace(16),
      AppInput(isPassword: true,
        labelText: 'Password',contentPadding: contentPadding,
      ),
      verticalSpace(9),
      verticalSpace(40),
      AppButton(
        title: 'SIGN IN',
        onClick: () {},
      )
    ]));
  }
}
