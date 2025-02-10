import 'package:usman_portfolio/core/di/dependency_injection.dart';
import 'package:usman_portfolio/features/home/presentation/cubit/home_cubit.dart';

void homeInjector() {
  sl.registerLazySingleton<HomeCubit>(() => HomeCubit());
}
