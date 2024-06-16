import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/styles.dart';

class WelcomeAndScreenName extends StatelessWidget {
  String screenName;

  WelcomeAndScreenName(this.screenName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 90.h, bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome back',style: TextStyles.font25SemiBoldTitleColor,),
          Text(
            screenName,style: TextStyles.font25SemiBoldTitleColor,
          )
        ],
      ),
    );
  }
}
