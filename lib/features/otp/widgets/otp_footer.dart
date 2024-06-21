import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/app_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/styles.dart';

class OtpFooter extends StatelessWidget {
  const OtpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't get code?",
                  style: TextStyles.font16TextColorMedium),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend',
                  style: TextStyles.font14TitleColorUnderlineSemiBold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
