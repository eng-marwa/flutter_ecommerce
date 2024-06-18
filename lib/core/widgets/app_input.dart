import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text_with_bg.dart';

class AppInput extends StatelessWidget {
  bool obscureText = false;
  final Function()? onClick;
  final String? labelText;
  TextInputType? type;
  final bool enabled;

  final TextEditingController? controller;

  AppInput(
      {required this.obscureText,
      this.onClick,
      this.labelText = '',
      this.type,
      this.enabled = true,
      this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0.h),
          child: TextField(
            obscureText: obscureText,
            controller: controller,
            enabled: enabled,
            keyboardType: type,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ColorName.colorBorder),
              ),
              suffixIcon: Visibility(
                visible: obscureText,
                child: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: onClick,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 15.0.w, top: 0.h),
          child: TextWithBackground(
            text: labelText!,
            backgroundColor: ColorName.colorWhite,
            textColor: ColorName.colorText,
          ),
        ),
      ],
    );
  }
}
