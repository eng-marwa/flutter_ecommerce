import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/widgets/text_with_bg.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthDivider extends StatelessWidget {
  final String? text;

  AuthDivider({this.text = '', super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6.h),
          child: const Divider(
            color: ColorName.colorBorder,
          ),
        ),

        Align(
          alignment: Alignment.center,
          child: TextWithBackground(
            text: text!,
            backgroundColor: ColorName.colorWhite,
            textColor: ColorName.colorText,
          ),
        ),

      ],
    );
  }
}
