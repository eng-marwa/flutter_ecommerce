import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/extensions/hideKeyboard.dart';

class OtpInput extends StatefulWidget {
  final Function()? onClick;
  final String? labelText;
  final bool enabled;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;

  OtpInput(
      {this.onClick,
      this.labelText = '',
      this.enabled = true,
      this.controller,
      this.contentPadding,
      super.key});

  @override
  State<OtpInput> createState() => _AppInputState();
}

class _AppInputState extends State<OtpInput> {
  String otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 50.w,
          height: 70.h,
          child: TextField(
            onTapOutside: (event) => context.hideKeyboard(),
            controller: widget.controller,
            enabled: widget.enabled,
            keyboardType:  TextInputType.number,
            maxLength: 1,
            autofocus: true,
            onChanged: (value) {
              if (value.isNotEmpty) {
                otpCode += value;
                FocusScope.of(context).nextFocus();
              }

            },
            decoration: InputDecoration(
              isDense: true,
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: ColorName.colorPrimary)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ColorName.colorBorder),
              ),
              fillColor: ColorName.colorGrey,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ColorName.colorGrey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
