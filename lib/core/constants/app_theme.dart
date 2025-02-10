import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usman_portfolio/core/constants/app_colors.dart';
import 'package:usman_portfolio/core/constants/app_typography.dart';

class AppTheme {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: AppColors.primaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: GoogleFonts.inter().fontFamily,
    );
  }

  static ThemeData lightTheme(
      {required bool isMobile, required bool isTablet}) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      primaryIconTheme: const IconThemeData(color: AppColors.grayDarkDefault),
      scaffoldBackgroundColor: AppColors.grayLightDefault,
      highlightColor: Colors.transparent,
      primaryColor: AppColors.grayLightDefault,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: GoogleFonts.inter().fontFamily,
      dividerColor: AppColors.grayLight400,
      indicatorColor: AppColors.grayLight900,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: AppColors.grayLight900),
      iconTheme: const IconThemeData(color: AppColors.grayDarkDefault),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.grayDark900),
      appBarTheme: AppBarTheme(
          titleTextStyle: AppTypography.body2Medium
              .copyWith(color: AppColors.grayLight900)),
      textTheme: TextTheme(
        labelLarge:
            AppTypography.h3Desktop.copyWith(color: AppColors.grayLight900),
        labelSmall: AppTypography.smallLabelStyle(
                isMobile: isMobile, isTablet: isTablet)
            .copyWith(color: AppColors.grayLight900),
        headlineLarge:
            AppTypography.h1Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayLight900),
        headlineMedium:
            AppTypography.h2Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayLight900),
        headlineSmall:
            AppTypography.h3Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayLight900),
        bodyLarge:
            AppTypography.body1Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayLight900),
        bodyMedium:
            AppTypography.body2Medium.copyWith(color: AppColors.grayLight900),
        bodySmall:
            AppTypography.body3Style.copyWith(color: AppColors.grayLight600),
        displayMedium:
            AppTypography.body2Normal.copyWith(color: AppColors.grayLight900),
        titleMedium:
            AppTypography.subtitleStyle(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayLight900),
      ),
    );
  }

  static ThemeData darkTheme({required isMobile, required isTablet}) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      scaffoldBackgroundColor: AppColors.grayDarkDefault,
      primaryIconTheme: const IconThemeData(color: AppColors.grayLightDefault),
      highlightColor: Colors.transparent,
      primaryColor: AppColors.grayDarkDefault,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: GoogleFonts.inter().fontFamily,
      dividerColor: AppColors.grayDark400,
      indicatorColor: AppColors.grayDark900,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: AppColors.grayDark900),
      iconTheme: const IconThemeData(color: AppColors.grayLightDefault),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.grayLight900),
      appBarTheme: AppBarTheme(
          titleTextStyle:
              AppTypography.body2Medium.copyWith(color: AppColors.grayDark900)),
      textTheme: TextTheme(
        labelLarge:
            AppTypography.h3Desktop.copyWith(color: AppColors.grayDark900),
        labelSmall: AppTypography.smallLabelStyle(
                isMobile: isMobile, isTablet: isTablet)
            .copyWith(color: AppColors.grayDark900),
        headlineLarge:
            AppTypography.h1Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayDark900),
        headlineMedium:
            AppTypography.h2Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayDark900),
        headlineSmall:
            AppTypography.h3Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayDark900),
        bodyLarge:
            AppTypography.body1Style(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayDark900),
        bodyMedium:
            AppTypography.body2Medium.copyWith(color: AppColors.grayDark900),
        bodySmall:
            AppTypography.body3Style.copyWith(color: AppColors.grayDark600),
        displayMedium:
            AppTypography.body2Normal.copyWith(color: AppColors.grayDark900),
        titleMedium:
            AppTypography.subtitleStyle(isMobile: isMobile, isTablet: isTablet)
                .copyWith(color: AppColors.grayDark900),
      ),
    );
  }

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.grayLightDefault,
    onPrimary: AppColors.grayLight50,
    secondary: AppColors.grayLight100,
    onSecondary: AppColors.grayLight50,
    error: Colors.red,
    onError: Colors.red,
    surface: AppColors.grayLightDefault,
    onSurface: AppColors.grayLight50,
    primaryContainer: AppColors.grayLight900,
    surfaceContainer: AppColors.grayLight50,
    secondaryContainer: AppColors.grayLight200,
  );

  static ColorScheme darkColorScheme = const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.grayDarkDefault,
      onPrimary: AppColors.grayDark50,
      secondary: AppColors.grayDark100,
      onSecondary: AppColors.grayDark50,
      error: Colors.red,
      onError: Colors.red,
      surface: AppColors.grayDarkDefault,
      onSurface: AppColors.grayDark50,
      primaryContainer: AppColors.grayDark900,
      surfaceContainer: AppColors.grayDark50,
      secondaryContainer: AppColors.grayDark200);
}
