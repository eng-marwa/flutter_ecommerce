import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding{
  String title='';
  String body ='';
  Image? image;
  bool lastPage = false;
  SvgPicture? pageIndicator;

  Onboarding(
      this.title, this.body, this.image, this.lastPage, this.pageIndicator);
}