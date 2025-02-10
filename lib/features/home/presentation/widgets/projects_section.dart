import 'package:flutter/material.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/utils/utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: Utils.isMobile(context.screenWidth) ? 16 : 24,
            right: Utils.isMobile(context.screenWidth) ? 16 : 24,
            top: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: Column(spacing: 20, children: []));
  }
}
