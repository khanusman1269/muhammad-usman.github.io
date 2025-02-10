import 'package:flutter/widgets.dart';
import 'package:usman_portfolio/core/constants/app_constants.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;

  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.desktop,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = context.screenWidth;
    Widget child;
    if (screenWidth >= AppConstants.desktopSize) {
      child = desktop;
    } else if (screenWidth >= AppConstants.tabletSize) {
      child = tablet;
    } else {
      child = mobile;
    }
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        child: KeyedSubtree(
          key: ValueKey(child.runtimeType),
            child: child));
  }
}
