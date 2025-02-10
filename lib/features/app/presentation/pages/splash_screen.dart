import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:usman_portfolio/core/constants/app_screens.dart';
import 'package:usman_portfolio/core/constants/app_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    moveToNext(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppStyle.appGradient),
      child:
          Center(child: Image.asset("assets/gif/portfolio.gif", height: 400)),
    );
  }
}

void moveToNext(BuildContext context) {
  Future.delayed(const Duration(seconds: 2))
      .then((value) => context.go(AppScreens.homeScreen));
}
