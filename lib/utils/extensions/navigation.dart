import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void navigateTo(String screen, {Object? args}) {
    Navigator.of(this).pushNamed(screen, arguments: args);
  }

  void navigateToReplacement(Widget screen) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }

  void navigateToAndRemoveUntil(Widget screen) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }

  void navigateBack() {
    Navigator.of(this).pop();
  }
}
