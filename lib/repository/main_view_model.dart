import 'package:flutter_application_geti_t/repository/main_repository.dart';

class MainViewModel {
  MainViewModel({repository}) : _repository = repository;

  MainRepository _repository;

  String fetchData() => _repository.fetchMessage();

}