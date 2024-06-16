import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  String title = '';
  final Function()? onClick;
  AppButton({required this.title,this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(
              double.infinity,
              52.h,
            )),
            backgroundColor: WidgetStateProperty.all(ColorName.colorPrimary),
            tapTargetSize: MaterialTapTargetSize.padded,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)))),
        onPressed: onClick,
        child: Text(
          '$title'.toUpperCase(),
          style: TextStyle(color: ColorName.colorWhite,fontSize: 16.sp,fontWeight: FontWeight.w600),
        ));
  }
}
