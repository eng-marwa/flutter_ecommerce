import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/E-CommerceApp.dart';

import 'core/di/module.dart';

void main() {
  configureDependencies();
  runApp(const ECommerceApp());
}
