import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../model/Onboarding.dart';
import '../widgets/onboarding_body.dart';
import '../widgets/onboarding_footer.dart';
import '../widgets/onboarding_header.dart';
import 'OnboardingScreen.dart';

class OnboardingMainScreen extends StatelessWidget {
  OnboardingMainScreen({super.key});

  List<Onboarding> list = [
    Onboarding("Welcome to Biggest Store",
        "Latest trends in clothing for women, men & kids at Multikart. Find new arrivals​, fashion catalogs, collections & lookbooks every week.\n",
        Assets.images.screen.image(), false,true, Assets.images.sliderDots.svg()),
    Onboarding("Pefect Pair for Everyone",
        "500+ Brands and more than 1,00,000 + apparel and accessories. Discover what works best for you with 30 Days Return policy.\n",
        Assets.images.screen1.image(), false,false, Assets.images.sliderDots1.svg()),
    Onboarding("Find all New Favourites",
        "New arrivals​, fashion catalogs & collections every week. Premium Brands. Free Shipping Available. Hassle Free Installations. Secure Payments.",
        Assets.images.screen2.image(), true,false, Assets.images.sliderDots2.svg()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(itemCount:list.length, itemBuilder: (context, index) => OnboardingScreen(list[index]),)
    );
  }
}