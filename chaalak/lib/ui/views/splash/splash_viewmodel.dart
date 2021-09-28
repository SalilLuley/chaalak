import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/app/router/router.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String _title = "Splash";

  String get title => _title;

  navigateToDetail() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
