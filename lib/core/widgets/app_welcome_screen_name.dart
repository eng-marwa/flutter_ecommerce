import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/styles.dart';

class WelcomeAndScreenName extends StatelessWidget {
  String screenName;
  bool welcomeMessage = false;

  WelcomeAndScreenName(this.screenName,this.welcomeMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70.h, bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(visible: welcomeMessage, child: Text('Welcome back',style: TextStyles.font25TitleColorSemiBold,)),
          Text(
            screenName,style: TextStyles.font25TitleColorSemiBold,
          )
        ],
      ),
    );
  }
}
