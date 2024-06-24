import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/core/routes/routes.dart';

import '../../features/forget_pass/screens/ForgetPasswordScreen.dart';
import '../../features/login/ui/screens/LoginScreen.dart';
import '../../features/onboarding/screens/OnboardingMainScreen.dart';
import '../../features/otp/screens/OtpScreen.dart';
import '../../features/register/screens/RegisterScreen.dart';
import '../../features/reset_pass/screens/ResetPasswordScreen.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingMainScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen( ));
      case Routes.otpVerification:
        return MaterialPageRoute(builder: (_) =>  OtpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text("No Route Found"),
            ),
            body: const Center(child: Text("No Route Found"))));
  }
}
