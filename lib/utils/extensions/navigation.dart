import 'package:flutter/material.dart';

extension Navigation on BuildContext{
  void navigateTo(Widget screen){
    Navigator.of(this).push(
        MaterialPageRoute(
        builder: (context) => screen
      )
    );
  }
  void navigateToReplacement(Widget screen){
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(
        builder: (context) => screen
      )
    );
  }

  void navigateToAndRemoveUntil(Widget screen){
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(
        builder: (context) => screen
      ),
      (route) => false
    );
  }
  void navigateBack(){
    Navigator.of(this).pop();
  }
}