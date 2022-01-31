import 'dart:convert';

import 'package:chaalak/app/router/router.locator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:http/http.dart' as http;

class HomeViewModel extends BaseViewModel {
  String _title = "Model";
  final navigationService = locator<NavigationService>();
  late GoogleMapController myController;
  final Set<Marker> markers = new Set(); //markers for google map
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

  getMarkers() async {
    // final response =
    //     await http.get(Uri.parse('https://chaalak.herokuapp.com/user/all'));

    // print("response==============");
    // if (response.statusCode == 200) {
    //   var tagsJson = jsonDecode(response.body);
    //   List? tags = tagsJson != null ? List.from(tagsJson) : null;

    //   print(tags);
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   print("Error");
    // }

    markers.add(Marker(
      //add first marker
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: InfoWindow(
        //popup info
        title: 'Marker Title First ',
        snippet: 'My Custom Subtitle',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    markers.add(Marker(
        //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(21.1341, 79.0816), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title Second ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
        onTap: () => {this.markerTap()}));

    markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(21.1327, 79.0960), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker,
        onTap: () => {this.markerTap()} //Icon for Marker
        ));

    //add more markers here

    return markers;
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
