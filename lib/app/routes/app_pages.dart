import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/init/views/init_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/register/views/register_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/splash/bindings/splash_bindings.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/home_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/login/views/login_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/presentation/view/presentation_view.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/splash/views/splash_view.dart';

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
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: _Paths.PRESENTATION,
      page: () => PresentationView()
    ),
    GetPage(
      name: _Paths.INIT,
      page: () => InitiView(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
    )
  ];
}
