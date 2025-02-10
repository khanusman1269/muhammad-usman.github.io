import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:usman_portfolio/core/constants/app_constants.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/extensions/sized_box.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/home/domain/entities/experience_entity.dart';

import 'heading_widget.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    var experienceList = ExperienceEntity.experience;
    return Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context.screenWidth) ? 16 : 24,
            vertical: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: Column(spacing: 20, children: [
          const HeadingWidget(title: "Experience"),
          15.0.height,
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: experienceList.length,
              itemBuilder: (context, index) {
                return _ExperienceItem(experienceEntity: experienceList[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return 15.height;
              })
        ]));
  }
}

class _ExperienceItem extends StatelessWidget {
  final ExperienceEntity experienceEntity;

  const _ExperienceItem({required this.experienceEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12.0)),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < AppConstants.mobileSize) {
            return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15.0,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child:
                        Image.asset(experienceEntity.companyImage, width: 40),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(experienceEntity.designation,
                              style: Theme.of(context).textTheme.titleMedium),
                          Text(experienceEntity.companyName,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(fontStyle: FontStyle.italic)),
                          Text(experienceEntity.dateRange,
                              style: Theme.of(context).textTheme.labelSmall),
                          10.height,
                          experienceEntity.description.isNotEmpty
                              ? _Description(
                                  texts: experienceEntity.description)
                              : const SizedBox.shrink(),
                        ]),
                  ),
                ]);
          }
          return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 40.0,
              children: [
                _Logo(image: experienceEntity.companyImage),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(experienceEntity.designation,
                            style: Theme.of(context).textTheme.titleMedium),
                        Text(experienceEntity.companyName,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontStyle: FontStyle.italic)),
                        10.height,
                        experienceEntity.description.isNotEmpty
                            ? _Description(texts: experienceEntity.description)
                            : const SizedBox.shrink(),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(experienceEntity.dateRange,
                      style: Theme.of(context).textTheme.bodySmall),
                ),
              ]);
        }));
  }
}

class _Logo extends StatelessWidget {
  final String image;

  const _Logo({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(image, width: 70));
  }
}

class _Description extends StatelessWidget {
  final List<String> texts;

  const _Description({required this.texts});

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      widgetList
          .add(Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text("\u2022 "),
        ),
        Expanded(child: Html(data: text))
      ]));
      widgetList.add(4.height);
    }
    return Column(children: widgetList);
  }
}
