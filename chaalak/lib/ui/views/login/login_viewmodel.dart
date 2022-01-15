import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/app/router/router.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _title = "Login View";

  String get title => _title;

  bool _passwordVisibility = false;

  bool get passwordVisibility => _passwordVisibility;

  setPasswordVisibility() {
    if (_passwordVisibility)
      _passwordVisibility = false;
    else
      _passwordVisibility = true;
    notifyListeners();
  }

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

  void login() {}
}
