import 'package:flutter/material.dart';
import 'package:usman_portfolio/core/constants/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final VoidCallback onTap;

  const RoundedButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 36,
      this.color = AppColors.grayLight900,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: Center(
            child: Text(text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.grayDark900
                          : AppColors.grayLight900,
                    ))),
      ),
    );
  }
}
