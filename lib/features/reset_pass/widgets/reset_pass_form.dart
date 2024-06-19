import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_ecommerce/utils/extensions/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';

class ResetPasswordForm extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
   ResetPasswordForm({this.contentPadding, super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      AppInput(
        obscureText: false,
        labelText: 'Current Password',
        type: TextInputType.visiblePassword,
        isPassword: true,
        contentPadding: contentPadding,
      ),
      verticalSpace(20),
      AppInput(
        obscureText: false,
        labelText: 'New Password',
        type: TextInputType.visiblePassword,
        isPassword: true,
        contentPadding: contentPadding,
      ),
      verticalSpace(20),
      AppInput(
        obscureText: false,
        labelText: 'Confirm New Password',
        type: TextInputType.visiblePassword,
        isPassword: true,
        contentPadding:contentPadding),
      verticalSpace(43),
      AppButton(title: 'RESET PASSWORD', onClick: () {})
    ]));
  }
}
