import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_ecommerce/utils/extensions/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';
import '../../../utils/extensions/Spacing.dart';

class LoginForm extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;

  LoginForm({this.contentPadding, super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      AppInput(
        isPassword: false,
        labelText: 'Username or Email',
        contentPadding: widget.contentPadding,
      ),
      verticalSpace(16),
      AppInput(
        isPassword: true,
        labelText: 'Password',
        contentPadding: widget.contentPadding,
      ),
      verticalSpace(9),
      Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              context.navigateTo(Routes.forgetPassword);
            },
            child: Text('Forgot Password?',
                style: TextStyles.font14PrimaryColorRegular),
          )),
      verticalSpace(43),
      AppButton(title: 'SIGN IN', onClick: () {})
    ]));
  }
}
