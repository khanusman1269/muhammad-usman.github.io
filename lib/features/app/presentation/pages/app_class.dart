import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usman_portfolio/core/constants/app_theme.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/routes/app_routes.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/app/presentation/cubit/app_cubit.dart';
import 'package:usman_portfolio/features/home/presentation/cubit/home_cubit.dart';

class AppClass extends StatefulWidget {
  const AppClass({super.key});

  @override
  State<AppClass> createState() => _AppClassState();
}

class _AppClassState extends State<AppClass> {
  @override
  Widget build(BuildContext context) {
    return materialRouterWidget(context);
  }

  Widget materialRouterWidget(BuildContext context) {
    var isMobile = Utils.isMobile(context.screenWidth);
    var isTablet = Utils.isTablet(context.screenWidth);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: AppRoutes.router.routerDelegate,
            routeInformationParser: AppRoutes.router.routeInformationParser,
            routeInformationProvider: AppRoutes.router.routeInformationProvider,
            themeMode: state.themeMode,
            theme: AppTheme.lightTheme(isMobile: isMobile, isTablet: isTablet),
            darkTheme:
                AppTheme.darkTheme(isMobile: isMobile, isTablet: isTablet),
          );
        },
      ),
    );
  }
}
