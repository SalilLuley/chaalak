import 'package:chaalak/app/router/router.locator.dart';
import 'package:chaalak/app/router/router.router.dart';
import 'package:chaalak/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
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
      // navigatorKey: StackedService.navigatorKey,
      // onGenerateRoute: StackedRouter().onGenerateRoute,
      home: HomeView(),
    );
  }
}
