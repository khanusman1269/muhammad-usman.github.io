import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  const HeadingWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme
          .secondaryContainer, borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
