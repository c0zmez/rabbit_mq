import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_with_iot/locator.dart';
import 'package:flutter_with_iot/services/navigator_service.dart';
import 'package:flutter_with_iot/ui/router.dart';
import 'package:flutter_with_iot/ui/views/dashboard_view.dart';

void main() {
 setupLocator();
 runZoned(() {
   runApp(MyApp());
 });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter with IoT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardView(),
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: generateRoute,
    );
  }
}
