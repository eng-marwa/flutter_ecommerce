import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/app_button.dart';
import 'package:flutter_ecommerce/utils/extensions/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routes/routes.dart';
import '../../../core/themes/styles.dart';

class ForgetPasswordFooter extends StatelessWidget {
  const ForgetPasswordFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Back to", style: TextStyles.font14TextColorSemiBold),
              TextButton(
                onPressed: () => context.navigateTo(Routes.login),
                child: Text(
                  'SIGN IN',
                  style: TextStyles.font14TitleColorUnderlineSemiBold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
