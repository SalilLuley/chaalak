import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/app/router/router.router.dart';
import 'package:chaalak/ui/views/bookingHistory/booking_history.dart';
import 'package:chaalak/ui/views/booking_history_detail/detail_view.dart';
import 'package:chaalak/ui/views/home/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator(environment: Environment.dev);
  _setupLogging();
  runApp(MyApp());
}

//Api call logger
void _setupLogging() {
  Logger.level = Level.debug;
  // Logger.listen((rec) {
  //   print('${rec.level.name}: ${rec.time}: ${rec.message}');
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chaalak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      // home: BookingHistoryView(),
      // home: HomeView(),
      // home: BookingHistoryDetailView()
    );
  }
}
