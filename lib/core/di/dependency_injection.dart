
import 'package:get_it/get_it.dart';
import 'package:usman_portfolio/features/home/home_injector.dart';

final GetIt sl = GetIt.instance;

Future<void> initDependencies() async {
  homeInjector();
}