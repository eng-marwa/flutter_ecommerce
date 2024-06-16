import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,children: [
      Assets.images.googleBtn.image(),
      SizedBox(width: 12.h,),
      Assets.images.fbBtn.image(),
      SizedBox(width: 12.h,),
      Assets.images.appleBtn.image(),
    ],);
  }
}
