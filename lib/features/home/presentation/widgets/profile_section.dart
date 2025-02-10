import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usman_portfolio/core/constants/app_colors.dart';
import 'package:usman_portfolio/core/constants/app_constants.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/extensions/sized_box.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/waving_hand.dart';
import 'package:usman_portfolio/generated/assets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context.screenWidth) ? 16 : 24,
            vertical: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < AppConstants.mobileSize) {
            return Column(spacing: 10, children: <Widget>[
              const _ImageVector(
                width: double.infinity,
                height: 300,
              ),
              const _NameWidget(),
              const _Summary(),
              10.height,
              const _Location()
            ]);
          } else {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    spacing: 10,
                    children: [
                      const _NameWidget(),
                      const _Summary(),
                      10.height,
                      const _Location()
                    ],
                  ),
                ),
                const _ImageVector(
                  width: 200,
                  height: 320,
                ),
              ],
            );
          }
        }));
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Hi There!",
                style: Theme.of(context).textTheme.headlineMedium),
            const WavingHand()
          ],
        ),
        RichText(
            text: TextSpan(
                text: "I'm ",
                style: Theme.of(context).textTheme.headlineLarge,
                children: [
              TextSpan(
                  text: "Usman Khan",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.purple))
            ])),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText("Mobile Application Developer",
                speed: const Duration(milliseconds: 100),
                cursor: "|",
                curve: Curves.bounceIn,
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.purple))
          ],
        ),
      ],
    );
  }
}

class _ImageVector extends StatelessWidget {
  final double width;
  final double height;

  const _ImageVector({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.iconPersonCoding,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary();

  @override
  Widget build(BuildContext context) {
    return Text(
        "Architect of Mobile Journeys | Android & Flutter Specialist | 4 Years From Code to Clicks | "
        "On a Mission to Build the Future of Mobile",
        style: Theme.of(context).textTheme.bodyLarge);
  }
}

class _Location extends StatelessWidget {
  const _Location();

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 8.0, children: [
      SvgPicture.asset(
        Assets.iconLocation,
        height: 16,
        width: 16,
        colorFilter: ColorFilter.mode(
            Theme.of(context).iconTheme.color ?? AppColors.primaryColor,
            BlendMode.srcIn),
      ),
      Text(
        "Islamabad",
        style: Theme.of(context).textTheme.bodySmall,
      )
    ]);
  }
}
