import 'package:app_router_example/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

/// setup Getit
void setupGetIt() {
  // setupCubit();
  setupModel();
}

/// setup model method
void setupModel() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

/// setup cubit method
// void setupCubit() {
//   getIt.registerLazySingleton<SplashCubit>(() => SplashCubit());
//   getIt.registerLazySingleton<HomeCubit>(() => HomeCubit());
// }
