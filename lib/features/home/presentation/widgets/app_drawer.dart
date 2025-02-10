import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:usman_portfolio/core/components/buttons.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/app/presentation/cubit/app_cubit.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/app_bar_title.dart';
import 'package:usman_portfolio/generated/assets.dart';

class AppDrawer extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey aboutMeKey;

  const AppDrawer({super.key, required this.homeKey, required this.aboutMeKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.screenWidth * 0.8,
        child: Drawer(
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: 1),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Transform.scale(
              scale: value.toDouble(),
              child: ListView(padding: EdgeInsets.zero, children: [
                SizedBox(
                  height: 80,
                  child: DrawerHeader(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppBarTitle(),
                      IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: SvgPicture.asset(Assets.iconCancel,
                              color: Theme.of(context).iconTheme.color))
                    ],
                  )),
                ),
                ListTile(
                    leading: Icon(Icons.home,
                        color: Theme.of(context).iconTheme.color, size: 16),
                    title: Text("Home",
                        style: Theme.of(context).textTheme.bodyMedium),
                    onTap: () {
                      Utils.scrollToSection(homeKey);
                    }),
                ListTile(
                    leading: Icon(Icons.person,
                        color: Theme.of(context).iconTheme.color, size: 16),
                    title: Text("About me",
                        style: Theme.of(context).textTheme.bodyMedium),
                    onTap: () {
                      Utils.scrollToSection(aboutMeKey);
                    }),
                ListTile(
                    leading: Icon(Icons.folder_special_sharp,
                        color: Theme.of(context).iconTheme.color, size: 16),
                    title: Text("Projects",
                        style: Theme.of(context).textTheme.bodyMedium),
                    onTap: () {
                      Utils.scrollToSection(homeKey);
                    }),
                ListTile(
                    leading: Icon(Icons.contact_page_rounded,
                        color: Theme.of(context).iconTheme.color, size: 16),
                    title: Text("Contact",
                        style: Theme.of(context).textTheme.bodyMedium),
                    onTap: () {
                      Utils.scrollToSection(homeKey);
                    }),
                const Divider(),
                BlocSelector<AppCubit, AppState, ThemeMode>(
                  selector: (state) => state.themeMode,
                  builder: (context, themeMode) {
                    return ListTile(
                      trailing: SvgPicture.asset(
                          themeMode == ThemeMode.light
                              ? Assets.iconDarkMode
                              : Assets.iconLightMode,
                          color: Theme.of(context).iconTheme.color),
                      title: Text("Switch Theme",
                          style: Theme.of(context).textTheme.bodyMedium),
                      onTap: () {
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
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundedButton(text: "Download CV", onTap: () {}),
                ),
              ]),
            ),
          ),
        ));
  }
}
