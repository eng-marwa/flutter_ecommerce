import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_header.dart';
import '../../../core/widgets/app_welcome_screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../../../utils/extensions/Spacing.dart';
import '../widgets/otp_footer.dart';
import '../widgets/otp_form.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isOtpValid = false;

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
                      WelcomeAndScreenName("Code Verification", false),
                      verticalSpace(20),
                      Text('Your verification code sent to',
                          style: TextStyles.font16TextColorMedium),
                      Row(children: [
                        Text(' +2010 669 21795',
                            style: TextStyles.font16TitleColorMedium),
                        IconButton(
                            onPressed: () {}, icon: Assets.images.edit.svg())
                      ]),
                      verticalSpace(20),
                      OtpForm(
                          onOtpCodeChanged: () {
                            // Do something when the otp code changes
                           setState(() {
                              isOtpValid = true;
                           });
                          },
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 18.h, horizontal: 20.w)),
                      verticalSpace(20),
                      const OtpFooter(),
                      verticalSpace(43),
                      Visibility(child: AppButton(title: 'Done'),visible: isOtpValid,)
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
