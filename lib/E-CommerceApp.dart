import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/routes/app_router.dart';
import 'package:flutter_ecommerce/core/routes/routes.dart';
import 'package:flutter_ecommerce/gen/colors.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce App',
        theme: ThemeData(
          primaryColor: ColorName.colorPrimary,
          scaffoldBackgroundColor: ColorName.colorWhite,
        ),
        initialRoute: Routes.onboarding,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
