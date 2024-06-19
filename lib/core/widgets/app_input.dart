import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text_with_bg.dart';

class AppInput extends StatefulWidget {
  bool obscureText = false;
  bool isPassword = false;
  final Function()? onClick;
  final String? labelText;
  TextInputType? type;
  final bool enabled;
  final EdgeInsetsGeometry? contentPadding;

  final TextEditingController? controller;

  AppInput(
      {this.obscureText = false,
      required this.isPassword,
      this.onClick,
      this.labelText = '',
      this.type,
      this.enabled = true,
      this.controller,
      this.contentPadding,
      super.key});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0.h),
          child: TextField(
            obscureText: widget.obscureText,
            controller: widget.controller,
            enabled: widget.enabled,
            keyboardType: widget.type,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: ColorName.colorPrimary)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ColorName.colorBorder),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: ColorName.colorBorder),
              ),
              suffixIcon: Visibility(
                visible: widget.isPassword,
                child: IconButton(
                  icon: Icon(
                    widget.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0.w, top: 0.h),
          child: TextWithBackground(
            text: widget.labelText!,
            backgroundColor: ColorName.colorWhite,
            textColor: ColorName.colorText,
          ),
        ),
      ],
    );
  }
}
