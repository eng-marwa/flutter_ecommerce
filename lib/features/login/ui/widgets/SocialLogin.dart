import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';


class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,children: [
      Assets.images.googleBtn.image(),
      horizontalSpace(12),
      Assets.images.fbBtn.image(),
      horizontalSpace(12),
      Assets.images.appleBtn.image(),
    ],);
  }
}
