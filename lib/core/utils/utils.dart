import 'package:flutter/material.dart';
import 'package:usman_portfolio/core/constants/app_constants.dart';

class Utils {
  static bool isDesktop(double screenWidth) {
    return screenWidth >= AppConstants.desktopSize;
  }

  static bool isTablet(double screenWidth) {
    return screenWidth >= AppConstants.tabletSize &&
        screenWidth < AppConstants.desktopSize;
  }

  static bool isMobile(double screenWidth) {
    return screenWidth < AppConstants.tabletSize;
  }

  static void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}
