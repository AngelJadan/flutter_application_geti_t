import 'package:flutter/material.dart';
import 'package:flutter_application_geti_t/di/injector.dart';

import 'controller/main_controller.dart';

void main() {
  setupInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Injector de dependencias con GET IT",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainController(title: 'GetIT flutter'),
    );
  }
}