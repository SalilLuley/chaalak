import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/app/router/router.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BookingHistoryViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _title = "Splash";

  String get title => _title;

  navigateToDetail() {
    _navigationService.navigateTo(Routes.homeView);
  }

  Future _replaceWith() async {
    Future.delayed(Duration(seconds: 0)).then((value) async =>
        {await _navigationService.replaceWith(Routes.homeView)});
  }

  Future indicateAnimationComplete() async {
    await _replaceWith();
  }

  openDetail() {
    _navigationService.navigateTo(Routes.bookingHistoryDetailView);
  }
}
