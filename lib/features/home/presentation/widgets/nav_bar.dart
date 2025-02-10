import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usman_portfolio/core/components/buttons.dart';
import 'package:usman_portfolio/core/extensions/sized_box.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/app/presentation/cubit/app_cubit.dart';
import 'package:usman_portfolio/features/home/presentation/cubit/home_cubit.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/app_bar_title.dart';
import 'package:usman_portfolio/generated/assets.dart';

class NavBar extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey aboutMeKey;
  const NavBar({super.key, required this.homeKey, required this.aboutMeKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: false,
        titleSpacing: 50,
        title: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: 1),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Transform.scale(
                scale: value.toDouble(), child: const AppBarTitle())),
        actions: [
          TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return Transform.scale(
                    scale: value.toDouble(),
                    child: Row(
                      children: [
                        _NavBarItem(label: "Home", onTap: () {
                          Utils.scrollToSection(homeKey);
                        }),
                        _NavBarItem(label: "About me", onTap: () {
                         Utils.scrollToSection(aboutMeKey);}),
                        _NavBarItem(label: "Projects", onTap: () {}),
                        _NavBarItem(label: "Contact", onTap: () {}),
                        10.width,
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: VerticalDivider(),
                        ),
                        10.width,
                        BlocSelector<AppCubit, AppState, ThemeMode>(
                          selector: (state) => state.themeMode,
                          builder: (context, themeMode) {
                            return IconButton(
                                onPressed: () {
                                  if (themeMode == ThemeMode.light) {
                                    context
                                        .read<AppCubit>()
                                        .changeAppThemeMode(ThemeMode.dark);
                                  } else {
                                    context
                                        .read<AppCubit>()
                                        .changeAppThemeMode(ThemeMode.light);
                                  }
                                },
                                icon: SvgPicture.asset(
                                    themeMode == ThemeMode.light
                                        ? Assets.iconDarkMode
                                        : Assets.iconLightMode,
                                    color: Theme.of(context).iconTheme.color));
                          },
                        ),
                        16.width,
                        RoundedButton(
                            text: "Download CV", width: 136, onTap: () {}),
                        24.width
                      ],
                    ));
              }),
        ]);
  }

}

class _NavBarItem extends StatelessWidget {
  // final IconData iconData;
  final String label;
  final VoidCallback onTap;

  final GlobalKey _rowKey = GlobalKey();

  _NavBarItem({
    // required this.iconData,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, Map<String, bool>>(
      selector: (state) => state.hoveringStates,
      builder: (context, hoveringStates) {
        bool isHovered = hoveringStates[label] ?? false;
        double width = 0;

        if (isHovered) {
          final renderBox =
              _rowKey.currentContext?.findRenderObject() as RenderBox?;
          width = renderBox?.size.width ?? 50;
        }
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onHover: (isHovering) {
                    context
                        .read<HomeCubit>()
                        .setHoveringState(label, isHovering);
                  },
                  onTap: onTap,
                  child: Row(
                    key: _rowKey,
                    children: [
                      // Icon(Icons.abc, color: AppColors.grey600, size: 16),
                      10.width,
                      Text(label,
                          style: Theme.of(context).textTheme.bodyMedium),
                      10.width,
                    ],
                  )),
              AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
                height: 4,
                width: isHovered ? width : 0,
                decoration: BoxDecoration(
                    color: Theme.of(context).indicatorColor,
                    borderRadius: BorderRadius.circular(5.0)),
              )
            ]);
      },
    );
  }
}
