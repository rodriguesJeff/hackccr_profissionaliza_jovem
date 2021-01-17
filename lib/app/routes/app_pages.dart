import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/home_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/login_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/presentation_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage (
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.PRESENTATION,
      page: () => PresentationView()
    ),
  ];
}
