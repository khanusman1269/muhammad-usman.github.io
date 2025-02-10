import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyle {
  AppStyle._();

  static Gradient appGradient = const RadialGradient(colors: [
    AppColors.darkPurple,
    AppColors.purple,
  ]);

}
