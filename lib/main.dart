import 'package:flutter/material.dart';
import 'package:usman_portfolio/core/di/dependency_injection.dart';

import 'features/app/presentation/pages/app_class.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([initDependencies()]);

  runApp(const AppClass());
}
