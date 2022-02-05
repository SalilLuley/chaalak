import 'package:built_collection/built_collection.dart';
import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/model/stations/find.dart';
import 'package:chaalak/service/home/station.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:chopper/chopper.dart' as chopper;

class HomeViewModel extends BaseViewModel {
  String _title = "Model";
  final navigationService = locator<NavigationService>();

  StationService _stationService = StationService.create();

  late GoogleMapController myController;
  final Set<Marker> _markers = new Set(); //markers for google map

  Set<Marker> get markers => _markers; //markers for google map

  static const LatLng showLocation =
      const LatLng(27.7089427, 85.3086209); //location to show in map

  int _lengthOfAddons = 5;
  int get lengthOfAddons => _lengthOfAddons;

  bool _bookingButtons = false;
  bool get bookingButtons => _bookingButtons;

  bool _services = false;
  bool get services => _services;

  bool _cars = false;
  bool get cars => _cars;

  String get title => _title;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.1458, 79.0882),
    zoom: 14.4746,
  );

  void openDrawer() {
    // _navigationService.openDrawer();
  }

  Future<chopper.Response<BuiltList<StationDtoResponse>>> find() async {
    var responseCategories = await _stationService.find();
    return responseCategories;
  }

  showBookingTabs() {
    if (!_bookingButtons) _bookingButtons = true;
    if (!_services) _cars = true;
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

  navigateToNotifications() {}

  mapTap() {
    hideBookingTabs();
  }

  markerTap() {
    showBookingTabs();
  }

  loadData() async {
    chopper.Response<BuiltList<StationDtoResponse>> result =
        await runBusyFuture(this._stationService.find());
    result.body!.forEach((item) {
      _markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(item.location.latitude,
            item.location.longitude), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: '${item.name}',
          snippet: '${item.description}',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });
    notifyListeners();
  }
}

class Album {
  String? firstName;
  String? lastName;
  String? userId;

  Album({this.firstName, this.lastName, this.userId});

  Album.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['userId'] = this.userId;
    return data;
  }
}
