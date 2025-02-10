import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  AppTypography._();

  static TextStyle getStyle(
    TextStyle mobileStyle,
    TextStyle tabletStyle,
    TextStyle desktopStyle, {
    required bool isMobile,
    required bool isTablet,
  }) {
    if (isMobile) {
      return mobileStyle;
    } else if (isTablet) {
      return tabletStyle;
    } else {
      return desktopStyle;
    }
  }

  static TextStyle h1Style({required bool isMobile, required bool isTablet}) {
    return getStyle(h1Mobile, h1Tablet, h1Desktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static TextStyle h2Style({required bool isMobile, required bool isTablet}) {
    return getStyle(h2TabletMobile, h2TabletMobile, h2Desktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static TextStyle h3Style({required bool isMobile, required bool isTablet}) {
    return getStyle(h3TabletMobile, h3TabletMobile, h3Desktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static TextStyle subtitleStyle(
      {required bool isMobile, required bool isTablet}) {
    return getStyle(subtitleTabletMobile, subtitleTabletMobile, subtitleDesktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static TextStyle smallLabelStyle(
      {required bool isMobile, required bool isTablet}) {
    return getStyle(labelSmallTabletMobile, labelSmallTabletMobile, labelSmallDesktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static TextStyle body1Style(
      {required bool isMobile, required bool isTablet}) {
    return getStyle(body1TabletMobile, body1TabletMobile, body1Desktop,
        isMobile: isMobile, isTablet: isTablet);
  }

  static String? interFontFamily = GoogleFonts.inter().fontFamily;

  // Heading 1 Styles
  static TextStyle h1Desktop = TextStyle(
      fontFamily: interFontFamily,
      fontSize: 48,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.02,
      height: 1.2);

  static TextStyle h1Tablet = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.02,
    height: 1,
  );

  static TextStyle h1Mobile = TextStyle(
      fontFamily: interFontFamily,
      fontSize: 36,
      fontWeight: FontWeight.w600,
      height: 1.11,);

  // Heading 2 Styles
  static TextStyle h2Desktop = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.02,
    height: 1.11,
  );

  static TextStyle h2TabletMobile = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.02,
    height: 1.56,
  );

  // Heading 3 Styles
  static TextStyle h3Desktop = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 30,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.02,
    height: 1.2,
  );

  static TextStyle h3TabletMobile = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.02,
    height: 1.33,
  );

  // Subtitle Styles
  static TextStyle subtitleDesktop = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static TextStyle subtitleTabletMobile = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.56,
  );

  // Body 1 Styles
  static TextStyle body1Desktop = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.56,
  );

  static TextStyle body1TabletMobile = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  // Body 2 Styles
  static TextStyle body2Normal = TextStyle(
      fontFamily: interFontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5);

  static TextStyle body2Medium = TextStyle(
      fontFamily: interFontFamily, fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle labelSmallDesktop = TextStyle(
      fontFamily: interFontFamily, fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle labelSmallTabletMobile = TextStyle(
      fontFamily: interFontFamily, fontSize: 12, fontWeight: FontWeight.w400);

  // Body 3 Styles
  static TextStyle body3Style = TextStyle(
    fontFamily: interFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
  );
}
