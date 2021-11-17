
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_geti_t/di/injector.dart';
import 'package:flutter_application_geti_t/repository/main_view_model.dart';

class MainController extends StatefulWidget{
  final String title;
  MainController({Key? key, required this.title }) : super(key: key);

  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  
  final viewModel = locator.get<MainViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("Mensaje ${viewModel.fetchData()}"),
      ),
    );
  }
}