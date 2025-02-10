import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usman_portfolio/core/constants/app_constants.dart';
import 'package:usman_portfolio/core/constants/app_urls.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/home/presentation/widgets/heading_widget.dart';
import 'package:usman_portfolio/generated/assets.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context.screenWidth) ? 16 : 24,
            vertical: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < AppConstants.mobileSize) {
            return const Column(spacing: 20, children: [
              HeadingWidget(title: "About me"),
              SizedBox(height: 15.0),
              _ProfileImage(),
              _Summary()
            ]);
          }
          return const Column(
            spacing: 20,
            children: [
              HeadingWidget(title: "About me"),
              SizedBox(height: 15.0),
              Row(
                  spacing: 20,
                  children: [_ProfileImage(), Expanded(child: _Summary())]),
            ],
          );
        }));
  }
}

class _Summary extends StatelessWidget {
  const _Summary();

  @override
  Widget build(BuildContext context) {
    return Text(
        "I am a seasoned Mobile Application Developer with extensive experience in both native Android development and Flutter. "
        "I have successfully developed a variety of mobile apps "
        " with diverse visions, delivering high-quality solutions that meet client expectations. "
        " I have expertise in developing mobile apps for different organizations with different visions.\n"
        "My journey into development started in 2021, and since then, I’ve "
        "continually embraced new challenges and technologies to refine my skills. "
        " I’m passionate about transforming ideas into fully realized projects, ensuring they excel in both functionality and design."
        "\n"
        "I’m always open to collaborating on impactful projects—feel free to reach out if you're looking for a dedicated developer to bring your mobile app ideas to life!",
        style: Theme.of(context).textTheme.bodyLarge);
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 200,
        height: 310,
        decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.secondaryContainer,
                width: 8.0)),
      ),
      const Positioned(
        left: 7,
        bottom: 8,
        child: _Image(
          width: 210,
          height: 310,
        ),
      ),
    ]);
  }
}

class _Image extends StatelessWidget {
  final double width;
  final double height;

  const _Image({this.height = 200, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Image.network(AppUrls.profileImageUrl, height: height, width: width,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) {
        return child;
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }, errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
      return SizedBox(
          width: width,
          height: height,
          // color: AppColors.greyD9,
          child: Center(
            child: SvgPicture.asset(Assets.iconProfileAvatar),
          ));
    });

    // return CachedNetworkImage(
    //     imageUrl: AppUrls.profileImageUrl,
    //     fit: BoxFit.contain,
    //     height: height,
    //     width: width,
    //     httpHeaders: const {'Access-Control-Allow-Origin': '*'},
    //     placeholder: (context, url) =>
    //         const _LoadingCircularForCacheImageWidget(),
    //     errorWidget: (context, url, error) => SizedBox(
    //         width: width,
    //         height: height,
    //         // color: AppColors.greyD9,
    //         child: Center(
    //           child: SvgPicture.asset(Assets.iconProfileAvatar),
    //         )));
  }
}
