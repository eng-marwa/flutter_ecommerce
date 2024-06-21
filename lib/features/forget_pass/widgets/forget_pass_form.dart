import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_ecommerce/utils/extensions/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_input.dart';
import '../../../gen/colors.gen.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
          AppInput(obscureText: false,labelText: 'Phone Number',type: TextInputType.phone, isPassword: false,contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),),
          verticalSpace(43),
          AppButton(
              title: 'SEND OTP',
              onClick: () {
                context.navigateTo(Routes.otpVerification);
              }
          )
        ]));
  }
}
