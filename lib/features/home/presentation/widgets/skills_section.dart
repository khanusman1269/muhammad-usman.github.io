import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/extensions/sized_box.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/home/domain/entities/skills_entity.dart';

import 'heading_widget.dart';
import 'dart:math' as math;

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var skills = SkillsEntity.skills(context);
    int height = 120;
    int spanCount = math.max((context.screenWidth / height).floor(), 3);

    int rowCount = (skills.length / spanCount).ceil();
    double gridHeight = (rowCount * height).toDouble();

    return Padding(
        padding: EdgeInsets.only(
            left: Utils.isMobile(context.screenWidth) ? 16 : 24,
            right: Utils.isMobile(context.screenWidth) ? 16 : 24,
            top: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: Column(spacing: 20, children: [
          const HeadingWidget(title: "Skills"),
          15.0.height,
          SizedBox(
            height: gridHeight,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: spanCount,
                childAspectRatio: 1.0,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skills.length,
              itemBuilder: (context, index) {
                var skill = skills[index];
                if (index < skills.length) {
                  return _SkillItem(image: skill.image, name: skill.name);
                } else {
                  return const SizedBox.shrink();
                }

              },
            ),
          ),
        ]));
  }
}

class _SkillItem extends StatelessWidget {
  final String image;
  final String name;

  const _SkillItem({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        name.contains("Jetpack")
            ? Image.asset(image, height: 48, width: 48, fit: BoxFit.cover)
            : SvgPicture.asset(
                image,
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
        Text(name,
            style: TextTheme.of(context).bodyLarge, textAlign: TextAlign.center)
      ],
    );
  }
}
