import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
   const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("<UK />", style: Theme.of(context).textTheme.labelLarge);
  }
}
