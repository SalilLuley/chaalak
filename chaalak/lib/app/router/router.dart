import 'package:chaalak/reactive_services/social_media_sign_in.dart';
import 'package:chaalak/ui/views/bookingHistory/booking_history.dart';
import 'package:chaalak/ui/views/booking_history_detail/detail_view.dart';
import 'package:chaalak/ui/views/home/home_view.dart';
import 'package:chaalak/ui/views/login/login_view.dart';
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
  MaterialRoute(
    page: HomeView,
  ),
  MaterialRoute(
    page: BookingHistoryView,
  ),
  MaterialRoute(
    page: BookingHistoryDetailView,
  ),
  MaterialRoute(
    page: LoginView,
  ),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: SocialMediaSignIn)
])
class AppSetup {
  //** Serves no purpose besides having an annotation  */
}
