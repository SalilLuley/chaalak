import 'package:chaalak/app/router/router.locator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  String _title = "Model";
  final navigationService = locator<NavigationService>();
  late GoogleMapController myController;

  bool _bookingButtons = false;
  bool get bookingButtons => _bookingButtons;

  bool _services = false;
  bool get services => _services;

  bool _cars = false;
  bool get cars => _cars;

  String get title => _title;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  void openDrawer() {
    // _navigationService.openDrawer();
  }

  showBookingTabs() {
    _bookingButtons = true;
    _cars = true;
    notifyListeners();
  }

  hideBookingTabs() {
    _bookingButtons = false;
    _cars = false;
    _services = false;
    notifyListeners();
  }

  showServices() {
    _services = true;
    notifyListeners();
  }

  hideServices() {
    _services = false;
    notifyListeners();
  }

  showCars() {
    _cars = true;
    notifyListeners();
  }

  hideCars() {
    _cars = false;
    notifyListeners();
  }

  initialCamera() {
    return _kGooglePlex;
  }
}
