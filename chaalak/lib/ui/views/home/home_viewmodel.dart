import 'package:chaalak/app/router/router.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  String _title = "Model";
  final navigationService = locator<NavigationService>();

  bool _bookingButtons = false;
  bool get bookingButtons => _bookingButtons;

  String get title => _title;

  void openDrawer() {
    // _navigationService.openDrawer();
  }

  showBookingTabs() {
    _bookingButtons = true;
    notifyListeners();
  }

  hideBookingTabs() {
    _bookingButtons = false;
    notifyListeners();
  }
}
