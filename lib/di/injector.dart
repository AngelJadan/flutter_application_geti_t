import 'package:flutter_application_geti_t/repository/main_repository.dart';
import 'package:flutter_application_geti_t/repository/main_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupInjector(){
  locator.registerFactory<DataSource>( () => MainRepository());
  locator.registerSingleton(MainViewModel(repository: locator.get<DataSource>()));
}