import 'package:chaalak/ui/views/home/home_view.dart';
import 'package:chaalak/ui/views/splash/splash_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  CustomRoute(
      page: SplashView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: true,
      durationInMilliseconds: 400),
  CustomRoute(
      page: HomeView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400),
], dependencies: [
  LazySingleton(classType: NavigationService)
])
class AppSetup {
  //** Serves no purpose besides having an annotation  */
}
